# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

CARAVEL_ROOT?=$(PWD)/caravel
PRECHECK_ROOT?=${HOME}/mpw_precheck
SIM ?= RTL

export OPEN_PDKS_COMMIT?=41c0908b47130d5675ff8484255b43f66463a7d6
export PDK?=sky130B
export PDKPATH?=$(PDK_ROOT)/$(PDK)
# Install lite version of caravel, (1): caravel-lite, (0): caravel
CARAVEL_LITE?=1

MPW_TAG ?= mpw-7a

ifeq ($(CARAVEL_LITE),1)
	CARAVEL_NAME := caravel-lite
	CARAVEL_REPO := https://github.com/efabless/caravel-lite
	CARAVEL_TAG := $(MPW_TAG)
else
	CARAVEL_NAME := caravel
	CARAVEL_REPO := https://github.com/efabless/caravel
	CARAVEL_TAG := $(MPW_TAG)
endif

# Include Caravel Makefile Targets
.PHONY: % : check-caravel
%: 
	export CARAVEL_ROOT=$(CARAVEL_ROOT) && $(MAKE) -f $(CARAVEL_ROOT)/Makefile $@

# Verify Target for running simulations
.PHONY: verify
verify:
	cd ./verilog/dv/ && \
	export SIM=${SIM} && \
		$(MAKE) -j$(THREADS)

# Install DV setup
.PHONY: simenv
simenv:
	docker pull efabless/dv_setup:latest

PATTERNS=$(shell cd verilog/dv && find * -maxdepth 0 -type d)
DV_PATTERNS = $(foreach dv, $(PATTERNS), verify-$(dv))
TARGET_PATH=$(shell pwd)
VERIFY_COMMAND="cd ${TARGET_PATH}/verilog/dv/$* && export SIM=${SIM} && make"
$(DV_PATTERNS): verify-% : ./verilog/dv/% 
	docker run -v ${TARGET_PATH}:${TARGET_PATH} -v ${PDK_ROOT}:${PDK_ROOT} \
                -v ${CARAVEL_ROOT}:${CARAVEL_ROOT} \
                -e TARGET_PATH=${TARGET_PATH} -e PDK_ROOT=${PDK_ROOT} \
                -e CARAVEL_ROOT=${CARAVEL_ROOT} \
                -u $(id -u $$USER):$(id -g $$USER) efabless/dv_setup:latest \
                sh -c $(VERIFY_COMMAND)
				
# Openlane Makefile Targets
BLOCKS = $(shell cd openlane && find * -maxdepth 0 -type d)
.PHONY: $(BLOCKS)
$(BLOCKS): %:
	cd openlane && $(MAKE) $*

# Install caravel
.PHONY: install
install:
	@echo "Installing $(CARAVEL_NAME).."
	@git clone -b $(CARAVEL_TAG) $(CARAVEL_REPO) $(CARAVEL_ROOT)

# Create symbolic links to caravel's main files
.PHONY: simlink
simlink: check-caravel
### Symbolic links relative path to $CARAVEL_ROOT 
	$(eval MAKEFILE_PATH := $(shell realpath --relative-to=openlane $(CARAVEL_ROOT)/openlane/Makefile))
	mkdir -p openlane
	cd openlane &&\
	ln -sf $(MAKEFILE_PATH) Makefile

# Update Caravel
.PHONY: update_caravel
update_caravel: check-caravel
	cd $(CARAVEL_ROOT)/ && git checkout $(CARAVEL_TAG) && git pull

# Uninstall Caravel
.PHONY: uninstall
uninstall: 
	rm -rf $(CARAVEL_ROOT)

# Install Openlane
.PHONY: openlane
openlane: 
	cd openlane && $(MAKE) openlane

# Install Pre-check
# Default installs to the user home directory, override by "export PRECHECK_ROOT=<precheck-installation-path>"
.PHONY: precheck
precheck:
	@git clone --depth=1 --branch $(MPW_TAG) https://github.com/efabless/mpw_precheck.git $(PRECHECK_ROOT)
	@docker pull efabless/mpw_precheck:latest

.PHONY: run-precheck
run-precheck: check-pdk check-precheck
	$(eval INPUT_DIRECTORY := $(shell pwd))
	cd $(PRECHECK_ROOT) && \
	docker run -v $(PRECHECK_ROOT):$(PRECHECK_ROOT) \
	-v $(INPUT_DIRECTORY):$(INPUT_DIRECTORY) \
	-v $(PDK_ROOT):$(PDK_ROOT) \
	-e INPUT_DIRECTORY=$(INPUT_DIRECTORY) \
	-e PDK_PATH=$(PDK_ROOT)/$(PDK) \
	-e PDK_ROOT=$(PDK_ROOT) \
	-e PDKPATH=$(PDKPATH) \
	-u $(shell id -u $(USER)):$(shell id -g $(USER)) \
	efabless/mpw_precheck:latest bash -c "cd $(PRECHECK_ROOT) ; python3 mpw_precheck.py --input_directory $(INPUT_DIRECTORY) --pdk_path $(PDK_ROOT)/$(PDK)"

# Clean 
.PHONY: clean
clean:
	cd ./verilog/dv/ && \
		$(MAKE) -j$(THREADS) clean

check-caravel:
	@if [ ! -d "$(CARAVEL_ROOT)" ]; then \
		echo "Caravel Root: "$(CARAVEL_ROOT)" doesn't exists, please export the correct path before running make. "; \
		exit 1; \
	fi

check-precheck:
	@if [ ! -d "$(PRECHECK_ROOT)" ]; then \
		echo "Pre-check Root: "$(PRECHECK_ROOT)" doesn't exists, please export the correct path before running make. "; \
		exit 1; \
	fi

check-pdk:
	@if [ ! -d "$(PDK_ROOT)" ]; then \
		echo "PDK Root: "$(PDK_ROOT)" doesn't exists, please export the correct path before running make. "; \
		exit 1; \
	fi

.PHONY: help
help:
	cd $(CARAVEL_ROOT) && $(MAKE) help 
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

# Make sure we are using bash as the shell.
SHELL = bash

# These directories are excluded from format checks and such.
ALL_EXCLUDE = third_party .git env docs/env

# Install the requirements when they change
REQ_RUN_FILE=requirements.txt
REQ_RUN = .$(REQ_RUN_FILE)
$(REQ_RUN): $(REQ_RUN_FILE)
	$(IN_ENV) pip install -r $(REQ_RUN_FILE)
	touch --reference $(REQ_RUN_FILE) $(REQ_RUN)

REQ_DEV_FILE=requirements.dev.txt
REQ_DEV = .$(REQ_DEV_FILE)
$(REQ_DEV): $(REQ_DEV_FILE)
	$(IN_ENV) pip install -r $(REQ_DEV_FILE)
	touch --reference $(REQ_DEV_FILE) $(REQ_DEV)

# Create a virtualenv to install Python modules into.
# ------------------

# Run a command in the locally created environment if it exists.
ACTIVATE_SRC := env/bin/activate

IN_ENV = if [ -e $(ACTIVATE_SRC) ]; then source $(ACTIVATE_SRC); fi;
env:
	python -m virtualenv --python python3 env
	$(IN_ENV) pip install --upgrade pip
	make $(REQ_RUN)

devenv:
	make env
	make $(REQ_DEV)

.PHONY: env

# Helpful tools for developers
# ------------------

# Automatically format Python scripts and files.
FIND_EXCLUDE = $(foreach x,$(ALL_EXCLUDE),-and -not -path './$(x)/*')

PYTHON_FORMAT ?= yapf
format: $(REQ_DEV)
	[[ -z $$(git status -s) ]] # Verify no local changes before running.
	$(IN_ENV) find . -name \*.py $(FIND_EXCLUDE) -print0 | xargs -0 -P $$(nproc) yapf -p -i
	git diff

.PHONY: format

# Check the python scripts
pycodestyle: $(REQ_DEV)
	$(IN_ENV) find . -name \*.py $(FIND_EXCLUDE) -print0 | xargs -0 pycodestyle

.PHONY: pycodestyle

# Alias pep8 to the new pycodestyle name
pep8: pycodestyle
	true

PYLINT_ARGS := --extension-pkg-allow-list=gdstk
lint: $(REQ_DEV)
	$(IN_ENV) find . -name \*.py $(FIND_EXCLUDE) -print0 | xargs -0 pylint $(PYLINT_ARGS)

.PHONY: lint
