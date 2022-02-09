"""
Author: CoffeeNData
Date: 7/feb/2022
Description:
This script finds any addresses referenced of the given module.
The input files are output from VB Decompiler Pro.
"""
import sys

if __name__=="__main__":
    try:
        query = sys.argv[1]
        target_path = sys.argv[2]
    except:
        print("Usage:", sys.argv[0], "<module name> <source file>\n")
        exit(1)

    target = open(target_path, "r")
    lines = target.readlines()
    target.close()
    
    error_list = []
    
    print("\nFound the following XREFs:\n--------------------------")
    for line in lines:
        try:
            if query in line:
                print("0x" + line.split(query+".address_")[1][:8])
        except:
            error_list.append(("Error at line: "+line).split("\n")[0])
            continue
    
    if error_list:
        print("\n\nWe run into the following errors while executing:\n-------------------------------------------------")
        for i in range(len(error_list)):
            print(error_list[i])
            
    print("\nScript done. Exiting.")