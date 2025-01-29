import os

# The target line to search for in each text file
target_line = "Fuzzer finished without finding violations"

# Iterate through each file in the current working directory
for filename in os.listdir("."):
    # Check if the file has a .txt extension
    if filename.endswith(".txt"):
        # Open the file and check if the target line is present
        with open(filename, "r") as file:
            if target_line in file.read():
                # Remove the "archseq-" prefix and the ".txt" extension
                if filename.startswith("archseq-"):
                    # Extract the filename without the prefix and extension
                    stripped_name = filename[len("archseq-"):-len(".txt")]
                    print(stripped_name)
