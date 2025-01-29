import os
import sys


def check_violation(violation_dir):
    if os.path.basename(violation_dir).endswith("_bugs"):
        # print(f"Skipping bugs dir {os.path.basename(violation_dir)}")
        return

    analysis_file = os.path.join(violation_dir, "analysis.txt")
    # Check if the file exists and is non-empty
    assert os.path.isfile(analysis_file) and os.path.getsize(
        analysis_file) > 0, f"Error: {analysis_file} does not exist or is empty."
    with open(analysis_file, "r") as file:
        # Check if the line "Non-speculative violation found!" exists
        if any("Non-speculative violation found!" in line for line in file):
            print(
                f"Non-speculative access found in {os.path.basename(violation_dir)} - "
                f"Check ~/code/revizor-staging/docker/docker_speclfb/revizor-docker/src/results/{os.path.basename(violation_dir)}/analysis.txt"
            )
    return


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python non_spec_vio_checker.py <FULL_PATH_TO_VIOLATION_SUBDIR>")
        sys.exit(1)

    violation_dir = sys.argv[1]
    if not os.path.isdir(violation_dir):
        print(f"Error: {violation_dir} is not a valid directory.")
        sys.exit(1)

    check_violation(violation_dir)
