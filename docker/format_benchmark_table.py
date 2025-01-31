import sys

def format_table(input_file, output_file):
    # Read the file and process lines
    with open(input_file, "r") as f:
        lines = [line.strip().split("\t") for line in f.readlines()]

    # Extract headers and data
    header = lines[0]  # First row is the header
    data = lines[2:]  # Skip separator row (second row)

    # Determine column widths dynamically
    column_widths = [max(len(str(item)) for item in col) for col in zip(header, *data)]

    # Function to format a row with column separators
    def format_row(row):
        return "| " + " | ".join(f"{col.ljust(width)}" for col, width in zip(row, column_widths)) + " |"

    # Generate formatted table
    separator = "+-" + "-+-".join("-" * width for width in column_widths) + "-+"

    # Construct output
    output_lines = [separator, format_row(header), separator]  # Header row
    output_lines += [format_row(row) for row in data]  # Data rows
    output_lines.append(separator)  # Closing separator

    table_string = "\n".join(output_lines)
    # Write table to output file
    with open(output_file, "w") as f:
        f.write(table_string + "\n")

    print(f"Table successfully written to {output_file} 🎉")

# Handle command-line arguments
if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <input_file> <output_file>")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]

    format_table(input_file, output_file)
