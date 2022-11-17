import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams["figure.figsize"] = [15, 10]
plt.rcParams["figure.autolayout"] = True


df1 = pd.read_csv('../csv/curve(0).csv',header=None, delimiter=r"\s+")
df2 = pd.read_csv('../csv/curve(1).csv',header=None, delimiter=r"\s+")
df3 = pd.read_csv('../csv/curve(2).csv',header=None, delimiter=r"\s+")
df4 = pd.read_csv('../csv/curve(3).csv',header=None, delimiter=r"\s+")
df5 = pd.read_csv('../csv/curve(4).csv',header=None, delimiter=r"\s+")
df6 = pd.read_csv('../csv/curve(5).csv',header=None, delimiter=r"\s+")
df7 = pd.read_csv('../csv/curve(6).csv',header=None, delimiter=r"\s+")
df8 = pd.read_csv('../csv/curve(7).csv',header=None, delimiter=r"\s+")
df9 = pd.read_csv('../csv/curve(8).csv',header=None, delimiter=r"\s+")


#adding VDS, IDS headers to the csv file
headers = ['VDS', 'IDS']
df1.columns = headers
df2.columns = headers
df3.columns = headers
df4.columns = headers
df5.columns = headers
df6.columns = headers
df7.columns = headers
df8.columns = headers
df9.columns = headers


#Divide all IDS with 10^6 refering to uA in the plot 
df1.loc[:, 'IDS'] *= (1e6)
df2.loc[:, 'IDS'] *= (1e6)
df3.loc[:, 'IDS'] *= (1e6)
df4.loc[:, 'IDS'] *= (1e6)
df5.loc[:, 'IDS'] *= (1e6)
df6.loc[:, 'IDS'] *= (1e6)
df7.loc[:, 'IDS'] *= (1e6)
df8.loc[:, 'IDS'] *= (1e6)
df9.loc[:, 'IDS'] *= (1e6)
 
 
#plotting all curves on the plot
plt.plot(df1['VDS'], df1['IDS'], color='g', label='vgs = 0.5')
plt.plot(df1['VDS'], df2['IDS'], color='b', label='vgs = 0.75')
plt.plot(df1['VDS'], df3['IDS'], color='r', label='vgs = 1')
plt.plot(df1['VDS'], df4['IDS'], color='c', label='vgs = 1.25')
plt.plot(df1['VDS'], df5['IDS'], color='m', label='vgs = 1.5')
plt.plot(df1['VDS'], df6['IDS'], color='y', label='vgs = 1.75')
plt.plot(df1['VDS'], df7['IDS'], color='k', label='vgs = 2')
plt.plot(df1['VDS'], df8['IDS'], color='g', label='vgs = 2.25')
plt.plot(df1['VDS'], df9['IDS'], color='b', label='vgs = 2.5')

plt.title("I-V characteristics")
plt.xlabel('VDS')
plt.ylabel('IDS (uA)')

plt.legend()
plt.savefig('../images/I_V.png')
