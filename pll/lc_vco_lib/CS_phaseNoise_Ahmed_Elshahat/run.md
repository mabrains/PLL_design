
## Used commands

### Without noise 

```bash
ngspice spice_files/transient_no_noise.spice
```

```python
python3 scripts/noise_param_calc.py 
```

### With noise

```bash
ngspice spice_files/transient_with_noise.spice
```

```python
python3 scripts/phaseNoise_calc.py
```