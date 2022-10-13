##########################################################################
## Mabrains LLC
##########################################################################



import pandas as pd
import matplotlib.pyplot as plt
  
current_min = 70
failed_corner =[]

df = pd.read_csv('all_measurements_PEX_2.csv')

# fetching the failed corners
for index, row in df.iterrows():
    if (row["iref"]< current_min):
        failed_corner.append(row)

# saving the failed corners in a separate list
df_failed = pd.DataFrame(failed_corner)
df_failed.to_csv("all_measurements_failed_corners.csv", index=False)


fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.055)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

plt.scatter(df["corner name"], df['iref'], s = 50)
plt.xticks([]) 
#plt.xticks(rotation = 90)
plt.xlabel("Corners",fontsize=14)
plt.ylabel("Refrence Current (uA)",fontsize=14)
plt.title("BGR Current After PEX",fontsize=14)
plt.grid()
plt.tight_layout()
plt.plot(df["corner name"] , [70]*len(df["corner name"]),linewidth=4 ,color='blue')
plt.show()


