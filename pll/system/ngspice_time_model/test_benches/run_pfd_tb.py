################################################################################################
## Mabrains LLC
################################################################################################
from genericpath import isfile
import subprocess
import os
import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams["figure.figsize"] = (12, 10)
plt.rcParams["figure.autolayout"] = True

if __name__ == "__main__":
    
    output_file = "pfd_behave.csv"
    ## Delete existing output file

    if os.path.isfile(output_file):

        os.remove(output_file)

    ## Run the simulation

    subprocess.run(["ngspice", "-b", "test_pfd.sp"])

    if not os.path.isfile(output_file):

        print("## Simulation didn't complete.")
        exit()
    #import the signal arrays
    fields = ['time', 'v(FBS)','v(REFS)','v(UP)','v(DWN)']
    data_df = pd.read_csv(output_file,sep='\s+')
    timearr = data_df['time']
    FB      = data_df['v(FBS)']    
    REF     = data_df['v(REFS)']  
    UP      = data_df['v(UP)']
    DWN     = data_df['v(DWN)']        

    plt.figure(1)

    #Ref Signal
    plt.subplot(4,1,1)
    plt.plot(timearr , REF , color='b', label='REF')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('REF')
    plt.xlim(4e-6, 4.2e-6)
    plt.grid(True)
    
    #FB Signal
    plt.subplot(4,1,2)
    plt.plot(timearr , FB, color='g', label='FB')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('FB')
    plt.xlim(4e-6, 4.2e-6)
    plt.grid(True)
    
    #UP Signal
    plt.subplot(4,1,3)
    plt.plot(timearr , UP ,color='r', label='UP')
    plt.xlabel('time (sec)') 
    plt.ylabel('Amplitude (V)')
    plt.title('UP')
    plt.xlim(4e-6, 4.2e-6)
    plt.grid(True)
    
    #DWN Signal
    plt.subplot(4,1,4)
    plt.plot(timearr , DWN , color='c', label='DWN')
    plt.xlabel('time (sec)')
    plt.ylabel('Amplitude (V)')
    plt.title('DWN')
    plt.xlim(4e-6, 4.2e-6)
    plt.grid(True)

    plt.legend()
    plt.show()
