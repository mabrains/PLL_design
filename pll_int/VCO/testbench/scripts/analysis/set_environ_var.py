#########################################################
# --------------------------MABRAINS LLC------------------
#
# This script sets the environmental variables inside 
# spice test benches
#########################################################

import sys
import os
import jinja2

if __name__ == "__main__":

    spice_temp_path = sys.argv[1]
    TEMPLATE_FILE = sys.argv[2]
    run_folder_dir = sys.argv[3]

    PDK = os.environ['PDK']
    PDK_ROOT = os.environ['PDK_ROOT']

    templateLoader = jinja2.FileSystemLoader(searchpath=spice_temp_path)
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(TEMPLATE_FILE)

    # update the tb with the new values and save the content in a variable
    full_spice = template.render(PDK=PDK, PDK_ROOT=PDK_ROOT)

    # create a new tb for after setting the PDK and PDK_ROOT variables
    spice_file_path = os.path.join(run_folder_dir,'spice_files/tb.spice')
    text_file = open(spice_file_path, "w")
    text_file.write(full_spice)
    text_file.close()