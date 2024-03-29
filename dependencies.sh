#!/bin/bash
#Dependencies Installation
#All changes are save now, but not commited
#CH
workdir="./enviroments"
cd "$workdir" || exit

# Print the current working directory
pwd

# Array of YAML files

yaml_files=("dependencies.yaml")

eval "$(conda shell.bash hook)"
# Loop through YAML files and create Conda environments
for file in "${yaml_files[@]}"; do
  # Check if the file exists
  if [ -f "$file" ]; then
    # Extract environment name from YAML file using basename
    env_name=$(basename "$file" .yaml)
    # Print information
    echo "Creating Conda environment '$env_name' from '$file'"
    # Create Conda environment
    conda env create --name "$env_name" --file "$file"
  else
    echo "File not found: $file"
  fi
done





