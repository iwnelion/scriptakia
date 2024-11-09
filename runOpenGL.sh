#!/bin/bash

# Check if a filename was provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename.cpp>"
    exit 1
fi

# Get the filename from the first argument
FILENAME=$1

# Check if the file exists
if [ ! -f "$FILENAME" ]; then
    echo "Error: File '$FILENAME' not found."
    exit 1
fi

# Get the base name of the file (without extension)
BASENAME=$(basename "$FILENAME" .cpp)

# Compile the C++ file using g++
g++ -o "$BASENAME" "$FILENAME" -lGL -lGLU -lglut

# Check if the compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful! Executable created: ./$BASENAME"
    
# Run the executable
    ./"$BASENAME"
else
    echo "Compilation failed."
    exit 1
fi