#!/bin/bash

# Set the output file
output_file="users.csv"

# Create the header row
echo "Name,Age,SSN,Email,Phone_number,Location,Medical_records,Insurance_status" > "$output_file"

# Generate 50 random user records
for _ in {1..50}; 
do
  # Generate random values for each field

  name=$(shuf -n 1 /usr/share/dict/words | awk '{print tolower($0)}')
  age=$((RANDOM % 46 + 20))  # Generates a random number between 20 and 65
  ssn=$(printf "%03d-%02d-%04d" $((RANDOM % 1000)) $((RANDOM % 100)) $((RANDOM % 10000)))
  email="${name}@example.com"
  phone=$(printf "%03d-%04d" $((RANDOM % 1000)) $((RANDOM % 10000)))
  location=$(shuf -n 1 /usr/share/dict/words | awk '{print tolower($0)}')
  Medical_records=$(shuf -n 1 /Users/vishal/Desktop/DEVOPS/testing-names/status | awk '{print tolower($0)}')
  Insurance_status=$(shuf -n 1 /Users/vishal/Desktop/DEVOPS/testing-names/insrecord | awk '{print tolower($0)}')
  
  # Write the record to the CSV file
  echo "$name,$age,$ssn,$email,$phone,$location,$Medical_records,$Insurance_status" >> "$output_file"
done

echo "Generated 50 random user records in $output_file"

