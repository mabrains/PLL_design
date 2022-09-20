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

    

    output_file = "PFD_behave.csv"



    ## Delete existing output file

    if os.path.isfile(output_file):

        os.remove(output_file)



    ## Run the simulation

    #subprocess.run(["ngspice", "-b", "-a", "PFD_TB.sp", "-o", "PFD_log_file.log"])

    subprocess.run(["ngspice", "-b", "PFD_TB.sp"])

    if not os.path.isfile(output_file):

        print("## Simulation didn't complete.")

        exit()

    



    fields = ['time', 'v(S_FB)','v(S_REF)','v(UP_SIG)','v(DWN_SIG)']

    

    data_df = pd.read_csv(output_file,sep='\s+')

    timearr = data_df['time']

    FB      = data_df['v(S_FB)']    

    REF     = data_df['v(S_REF)']  

    UP      = data_df['v(UP_SIG)']

    DWN     = data_df['v(DWN_SIG)']        

    plt.figure(1)



    plt.subplot(4,1,1)



    plt.plot(timearr , REF , color='b', label='REF')



    plt.xlabel('time (sec)') 



    plt.ylabel('Amplitude (V)')



    plt.title('REF')

    

    plt.xlim(4e-6, 4.2e-6)



    plt.grid(True)





    plt.subplot(4,1,2)

    



    plt.plot(timearr , FB, color='g', label='FB')



    plt.xlabel('time (sec)') 



    plt.ylabel('Amplitude (V)')



    plt.title('FB')

    

    plt.xlim(4e-6, 4.2e-6)

    

    plt.grid(True)

    

    plt.subplot(4,1,3)



    plt.plot(timearr , UP ,color='r', label='UP')



    plt.xlabel('time (sec)') 



    plt.ylabel('Amplitude (V)')



    plt.title('UP')

    

    plt.xlim(4e-6, 4.2e-6)



    plt.grid(True)



    plt.subplot(4,1,4)



    plt.plot(timearr , DWN , color='c', label='DWN')



    plt.xlabel('time (sec)') 



    plt.ylabel('Amplitude (V)')



    plt.title('DWN')

    

    plt.xlim(4e-6, 4.2e-6)



    plt.grid(True)



    plt.title("DWN")



    plt.legend()



    plt.show()



    

