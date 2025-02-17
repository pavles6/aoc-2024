#!/bin/bash

# Directory where the Go files will be created
DIR="solutions"

# Create the directory if it doesn't exist
mkdir -p $DIR

# Loop to create 25 Go files
for i in $(seq 1 25); do
  FILE="$DIR/day-$i.go"

  # Check if the file already exists
  if [ ! -f $FILE ]; then
    # Create the file with the required content
    cat <<EOL > $FILE
package solutions

func SolutionDay$i() {
    // TODO: Implement solution
}
EOL
    echo "Created $FILE"
  else
    echo "$FILE already exists"
  fi
done
