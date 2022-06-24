# Import necessary packages
import pandas as pd
import numpy as np
import glob
import argparse
from functools import reduce

########################## Define Arguments for command line use ###########################
def readArguments():
    parser = argparse.ArgumentParser(description="")
    parser.add_argument("--path-to-counts", type = str, required = True,
                        help = "The path to a folder which contains the count arrays outputted by featureCounts")
    parser.add_argument("--condition1-prefix", type = str, default = "condition1",
                       help = "A prefix that is contained within the name of the count files for the condition1 data")
    parser.add_argument("--condition2-prefix", type = str, default = "condition2",
                       help = "A prefix that is contained within the name of the count files for the condition2 data")
    parser.set_defaults(feature =False)
    args = parser.parse_args()
    return args

def main(args):
    ########################## Raw Read Count ###########################

    # Define the path that you are going to take the files from.
    path = args.path_to_counts # use your path
    all_files = glob.glob(path + "/counts*.txt")

    # Create an empty list to put each dataframe into.
    li = []

    # Fill the list with all of the count dataframes.
    for filenames in all_files:
        df = pd.read_csv(filenames,
                     sep='\t',
                    header=1)
        li.append(df)

    # Remove the uneccessary columns and shorten the sample names.
    for i in range(len(li)):
        sample = li[i]
        sample = sample.drop(["Chr","Start","End","Strand","Length"], axis=1)
        sample.columns = sample.columns.str.replace("_Aligned.sortedByCoord.out.bam","", regex = True)
        li[i] = sample

    # Merge all of the dataframes together using an inner join to get raw read counts.
    raw_read_count = reduce(lambda  left,right: pd.merge(left,right,on=['Geneid'],
                                                how='inner'), li)

    ########################## Experimental Design ###########################

    # Creating a list of all of the Samples
    samples = list(raw_read_count.columns[1:])

    # Using a couple of string searches to record if each sample is a control or not.
    conditions = []
    for i in samples:
        if args.condition1_prefix in i:
            conditions.append("treated")
        elif args.condition2_prefix in i:
            conditions.append("control")

    # Using a couple of string searches to record if each sample is made
    # of RNA sequences or ribosome profiles
    data_type = []
    for i in samples:
        if "RNA" in i:
            data_type.append("RNA-Seq")
        elif "RPF" in i:
            data_type.append("Ribo-Seq")

    # Combine all of the lists together into a DataFrame
    exp_d = pd.DataFrame({"Samples": samples,
                  "Data_Type": data_type,
                  "Conditions": conditions})

    # Saving the dataframe as the experimental_design csv
    exp_d.to_csv("experimental_design.csv", index = False)

    # Save the raw read counts as input for RiboDiff
    raw_read_count.to_csv("raw_read_count.txt", sep = '\t', index = False)

    print("done")

if __name__ == "__main__":
    args = readArguments()
    main(args)
