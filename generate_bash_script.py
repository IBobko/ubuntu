# Read the input from the file
with open('input.txt', 'r') as file:
    lines = file.readlines()

# Initialize variables
groups = []
current_group = []

# Process the lines to identify file groups
for line in lines:
    line = line.strip()
    if line:
        current_group.append(line)
    else:
        if current_group:
            groups.append(current_group)
            current_group = []
if current_group:
    groups.append(current_group)

# Generate the bash script
with open('remove_duplicates.sh', 'w') as bash_script:
    bash_script.write("#!/bin/bash\n\n")
    for group in groups:
        for file in group[1:]:
            bash_script.write(f"rm \"{file}\"\n")

print("Bash script 'remove_duplicates.sh' has been created.")
