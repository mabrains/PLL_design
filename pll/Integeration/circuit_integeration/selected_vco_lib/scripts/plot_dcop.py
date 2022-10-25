# Importing libraries
import matplotlib.pyplot as plt
import math
import pandas as pd 
import numpy as np
from scipy.interpolate import interp1d


def get_arr(file_name):
	file = pd.read_csv (file_name,index_col=False,usecols=[1],header=None, delimiter=r"\s+")
	array = file.to_numpy()
	array = array.ravel()
	array = np.array(array)
	return array

#plotting corners=======================================================
vctrl = np.arange(0, 1.8+0.1, 0.1)



In_right_ssss=get_arr("csv_files/In_right_ssss.csv")[0]
In_right_sssf=get_arr("csv_files/In_right_sssf.csv")[0]
In_right_ssfs=get_arr("csv_files/In_right_ssfs.csv")[0]
In_right_ssff=get_arr("csv_files/In_right_ssff.csv")[0]
In_right_sstt=get_arr("csv_files/In_right_sstt.csv")[0]
In_right_sfss=get_arr("csv_files/In_right_sfss.csv")[0]
In_right_sfsf=get_arr("csv_files/In_right_sfsf.csv")[0]
In_right_sffs=get_arr("csv_files/In_right_sffs.csv")[0]
In_right_sfff=get_arr("csv_files/In_right_sfff.csv")[0]
In_right_sftt=get_arr("csv_files/In_right_sftt.csv")[0]
In_right_stss=get_arr("csv_files/In_right_stss.csv")[0]
In_right_stsf=get_arr("csv_files/In_right_stsf.csv")[0]
In_right_stfs=get_arr("csv_files/In_right_stfs.csv")[0]
In_right_stff=get_arr("csv_files/In_right_stff.csv")[0]
In_right_sttt=get_arr("csv_files/In_right_sttt.csv")[0]

In_right_fsss=get_arr("csv_files/In_right_fsss.csv")[0]
In_right_fssf=get_arr("csv_files/In_right_fssf.csv")[0]
In_right_fsfs=get_arr("csv_files/In_right_fsfs.csv")[0]
In_right_fsff=get_arr("csv_files/In_right_fsff.csv")[0]
In_right_fstt=get_arr("csv_files/In_right_fstt.csv")[0]
In_right_ffss=get_arr("csv_files/In_right_ffss.csv")[0]
In_right_ffsf=get_arr("csv_files/In_right_ffsf.csv")[0]
In_right_fffs=get_arr("csv_files/In_right_fffs.csv")[0]
In_right_ffff=get_arr("csv_files/In_right_ffff.csv")[0]
In_right_fftt=get_arr("csv_files/In_right_fftt.csv")[0]
In_right_ftss=get_arr("csv_files/In_right_ftss.csv")[0]
In_right_ftsf=get_arr("csv_files/In_right_ftsf.csv")[0]
In_right_ftfs=get_arr("csv_files/In_right_ftfs.csv")[0]
In_right_ftff=get_arr("csv_files/In_right_ftff.csv")[0]
In_right_fttt=get_arr("csv_files/In_right_fttt.csv")[0]

In_right_tsss=get_arr("csv_files/In_right_tsss.csv")[0]
In_right_tssf=get_arr("csv_files/In_right_tssf.csv")[0]
In_right_tsfs=get_arr("csv_files/In_right_tsfs.csv")[0]
In_right_tsff=get_arr("csv_files/In_right_tsff.csv")[0]
In_right_tstt=get_arr("csv_files/In_right_tstt.csv")[0]
In_right_tfss=get_arr("csv_files/In_right_tfss.csv")[0]
In_right_tfsf=get_arr("csv_files/In_right_tfsf.csv")[0]
In_right_tffs=get_arr("csv_files/In_right_tffs.csv")[0]
In_right_tfff=get_arr("csv_files/In_right_tfff.csv")[0]
In_right_tftt=get_arr("csv_files/In_right_tftt.csv")[0]
In_right_ttss=get_arr("csv_files/In_right_ttss.csv")[0]
In_right_ttsf=get_arr("csv_files/In_right_ttsf.csv")[0]
In_right_ttfs=get_arr("csv_files/In_right_ttfs.csv")[0]
In_right_ttff=get_arr("csv_files/In_right_ttff.csv")[0]
In_right_tttt=get_arr("csv_files/In_right_tttt.csv")[0]
#######################################################################################
f2 = open("In_right.csv",'w+',encoding = 'utf-8')

f2.write(str(In_right_ssss)+'\n')
f2.write(str(In_right_sssf)+'\n')
f2.write(str(In_right_ssfs)+'\n')
f2.write(str(In_right_ssff)+'\n')
f2.write(str(In_right_sstt)+'\n')
f2.write(str(In_right_sfss)+'\n')
f2.write(str(In_right_sfsf)+'\n')
f2.write(str(In_right_sffs)+'\n')
f2.write(str(In_right_sfff)+'\n')
f2.write(str(In_right_sftt)+'\n')
f2.write(str(In_right_stss)+'\n')
f2.write(str(In_right_stsf)+'\n')
f2.write(str(In_right_stfs)+'\n')
f2.write(str(In_right_stff)+'\n')
f2.write(str(In_right_sttt)+'\n')

f2.write(str(In_right_fsss)+'\n')
f2.write(str(In_right_fssf)+'\n')
f2.write(str(In_right_fsfs)+'\n')
f2.write(str(In_right_fsff)+'\n')
f2.write(str(In_right_fstt)+'\n')
f2.write(str(In_right_ffss)+'\n')
f2.write(str(In_right_ffsf)+'\n')
f2.write(str(In_right_fffs)+'\n')
f2.write(str(In_right_ffff)+'\n')
f2.write(str(In_right_fftt)+'\n')
f2.write(str(In_right_ftss)+'\n')
f2.write(str(In_right_ftsf)+'\n')
f2.write(str(In_right_ftfs)+'\n')
f2.write(str(In_right_ftff)+'\n')
f2.write(str(In_right_fttt)+'\n')

f2.write(str(In_right_tsss)+'\n')
f2.write(str(In_right_tssf)+'\n')
f2.write(str(In_right_tsfs)+'\n')
f2.write(str(In_right_tsff)+'\n')
f2.write(str(In_right_tstt)+'\n')
f2.write(str(In_right_tfss)+'\n')
f2.write(str(In_right_tfsf)+'\n')
f2.write(str(In_right_tffs)+'\n')
f2.write(str(In_right_tfff)+'\n')
f2.write(str(In_right_tftt)+'\n')
f2.write(str(In_right_ttss)+'\n')
f2.write(str(In_right_ttsf)+'\n')
f2.write(str(In_right_ttfs)+'\n')
f2.write(str(In_right_ttff)+'\n')
f2.write(str(In_right_tttt)+'\n')