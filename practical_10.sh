#!/bin/bash

# Input files (assuming names.txt and scores.txt)
names_file="names.txt"
scores_file="scores.txt"

# Check if input files exist
if [ ! -f "$names_file" ] || [ ! -f "$scores_file" ]; then
    echo "Input files do not exist."
    exit 1
fi

# Combine the two files side by side and process the data
paste -d '|' "$names_file" "$scores_file" | {
    # Initialize line counter
    line_count=0

    # Print the header for the result sheet
    echo "Result Sheet"
    echo "-------------------------------------------"
    echo "Student Name   |   Score"
    echo "-------------------------------------------"

    # Read and process the combined data
    while IFS='|' read -r name score; do
        # Increment line counter
        ((line_count++))

        # Print the result for each student
        printf "%-15s |   %s\n" "$name" "$score"
    done

    # Calculate the total number of students
    total_students=$line_count

    # Print the total number of students
    echo "-------------------------------------------"
    echo "Total Students: $total_students"
}