#!/bin/bash
# Script 5: The Open Source Manifesto Generator
# Name: Arushi Srivastava (24BOE10019)
# Description: An interactive script that collects user input to generate and save a personalized open-source philosophy statement to a text file.
# Concepts: read input, string concatenation, redirection (>), date

# TIP: You can create an alias for this script in ~/.bashrc:
# alias manifesto='./script5_manifesto.sh'

echo "--- Open Source Philosophy Generator ---"

# Interactive questions
read -p "What is your name? " USER_NAME
read -p "What is your favorite open-source tool? " FAV_TOOL
read -p "In one word, what does 'Open Source' mean to you? (e.g., Freedom): " CORE_VALUE

# Composing the paragraph
MANIFESTO="I, $USER_NAME, believe that software should be transparent. 
Because of projects like $FAV_TOOL, I have learned that $CORE_VALUE is the 
foundation of modern technology. This statement was generated on $(date)."

# Saving to file
FILENAME="my_philosophy.txt"
echo "$MANIFESTO" > "$FILENAME"

echo "---------------------------------------"
echo "Manifesto complete! It has been saved to $FILENAME."
cat "$FILENAME"
