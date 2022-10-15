##########################################################################
## Mabrains LLC
##########################################################################



import pandas as pd
import matplotlib.pyplot as plt
  
current_min = 70
failed_corner =[]
tt_location_sch = -1
tt_location_pex = -1
tt_str = "tt,30,1.0"
schematic_const_load_path = '../csv_sheets/constant_load/all_measurements_schematic.csv'
pex_const_load_path = '../csv_sheets/constant_load/all_measurements_PEX.csv'

schematic_variant_load_path = '../csv_sheets/variant_load/all_measurements_schematic.csv'
pex_variant_load_path = '../csv_sheets/variant_load/all_measurements_PEX.csv'


#####################
#schematic###########
#####################

df_sch = pd.read_csv(schematic_variant_load_path)

# fetching the failed corners
for index, row in df_sch.iterrows():
    if (row["iref"]< current_min):
        failed_corner.append(row)
    if (row["corner name"] == tt_str):
        tt_location_sch = index

# saving the failed corners in a separate list
df_sch_failed = pd.DataFrame(failed_corner)
#df_sch_failed.to_csv("../csv_sheets/variant_load/all_measurements_failed_corners_schematic.csv", index=False)


fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.055)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

plt.scatter(df_sch["corner name"], df_sch['iref'], s = 30)
plt.scatter(df_sch["corner name"][tt_location_sch], df_sch['iref'][tt_location_sch], s = 100,label=tt_str)
plt.xticks([]) 
#plt.xticks(rotation = 90)
plt.xlabel("Corners",fontsize=14)
plt.ylabel("Refrence Current (uA)",fontsize=14)
plt.title("BGR Current Before PEX",fontsize=14)
plt.legend()
plt.grid()
plt.tight_layout()
plt.plot(df_sch["corner name"] , [current_min]*len(df_sch["corner name"]),linewidth=2.5 ,color='blue')
plt.show()

#####################
#after pex###########
#####################
df_pex = pd.read_csv(pex_variant_load_path)

# fetching the failed corners
for index, row in df_pex.iterrows():
    if (row["iref"]< current_min):
        failed_corner.append(row)
    if (row["corner name"] == "tt,30,1.0"):
        tt_location_pex = index
# saving the failed corners in a separate list
df_pex_failed = pd.DataFrame(failed_corner)
#df_pex_failed.to_csv("../csv_sheets/variant_load/all_measurements_failed_corners_PEX.csv", index=False)


fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.055)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

plt.scatter(df_pex["corner name"], df_pex['iref'], s = 30)
plt.scatter(df_pex["corner name"][tt_location_pex], df_pex['iref'][tt_location_pex], s = 100,label=tt_str)
plt.xticks([]) 
#plt.xticks(rotation = 90)
plt.xlabel("Corners",fontsize=14)
plt.ylabel("Refrence Current (uA)",fontsize=14)
plt.title("BGR Current After PEX",fontsize=14)
plt.grid()
plt.tight_layout()
plt.plot(df_pex["corner name"] , [current_min]*len(df_pex["corner name"]),linewidth=2.5 ,color='blue')
plt.show()


###################################
##plot schematic and pex combined##
###################################
fig, ax = plt.subplots(figsize=(8, 10))
plt.subplots_adjust(right=0.9)
plt.subplots_adjust(left=0.055)
plt.subplots_adjust(top=0.88)
plt.subplots_adjust(bottom=0.086)

plt.scatter(df_sch["corner name"], df_sch['iref'], s = 30,label='Schematic')
plt.scatter(df_pex["corner name"], df_pex['iref'], s = 30,label='PEX')
plt.scatter(df_sch["corner name"][tt_location_sch], df_sch['iref'][tt_location_sch], s = 100,label=tt_str+'_Schematic')
plt.scatter(df_pex["corner name"][tt_location_pex], df_pex['iref'][tt_location_pex], s = 100,label=tt_str+'_PEX')
plt.xticks([]) 
#plt.xticks(rotation = 90)
plt.xlabel("Corners",fontsize=14)
plt.ylabel("Refrence Current (uA)",fontsize=14)
plt.title("BGR Current Before And After PEX",fontsize=14)
plt.grid()
plt.tight_layout()
plt.plot(df_pex["corner name"] , [current_min]*len(df_pex["corner name"]),linewidth=2.5 ,color='red',label='Minimum Operating Current')
plt.legend()
plt.show()