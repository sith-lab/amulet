import os
import re
from pathlib import Path

# Regex pattern to match the duration line
pattern = re.compile(r"Duration Elapsed: (\d+)hrs-(\d+)mins-(\d+)secs")

# Initialize variables to accumulate total time in seconds and count of matched files
total_time_seconds = 0
file_count = 0

# Iterate through all "speclfb-*.txt" files in the current directory
for file_path in Path(".").glob("speclfb-*.txt"):
    with open(file_path, "r") as file:
        for line in file:
            match = pattern.search(line)
            if match:
                hours, minutes, seconds = map(int, match.groups())
                # Convert the time to total seconds
                total_seconds = hours * 3600 + minutes * 60 + seconds
                total_time_seconds += total_seconds
                file_count += 1
                break  # Only one match per file

# Calculate the average time if there were any matches
if file_count > 0:
    average_time_seconds = total_time_seconds // file_count
    average_minutes = average_time_seconds // 60
    average_seconds = average_time_seconds % 60
    print(f"Average Duration: {average_minutes} mins {average_seconds} secs")
else:
    print("No duration lines found in the files.")
