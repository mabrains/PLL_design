
import pandas as pd
k=2

results = []
# entering log files to get fout, n values 
for y in range (k):
    results_dict={}
    current_file= open (f"divider_tb_out.spice{y+1}.log", "r")
    for line in current_file.readlines():
        s = line.split()
        #print (s)
        if len(s) > 2:
             if s[0] == "f_out":
                print (s[2])
                results_dict["f_out"] = s[2]
             elif s[0] == "n":
                 results_dict["n"] = s[2]

    results.append(results_dict)

print (results)
if len(results) > 0:
      df = pd.DataFrame(results)
      df.to_csv("divider_simulation.csv", index=False)






# server options
    # We can use a with statement to ensure threads are cleaned up promptly
    with concurrent.futures.ThreadPoolExecutor(max_workers=NUM_WORKERS) as executor:
        # Start the load operations and mark each future with its URL
        future_to_comb = {executor.submit(run_corner, comp): comp for comp in all_comb}