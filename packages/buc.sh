#!/bin/bash

# Set the directory for the downloaded files
DOWNLOAD_DIR="$HOME/buc_zpm"

# Main loop
while true; do

    # Create the directory if it doesn't exist
    mkdir -p "$DOWNLOAD_DIR"

    # Download the HTML pages using curl
    echo "Downloading assets..."
    curl -o "$DOWNLOAD_DIR/index.html" "https://raw.githubusercontent.com/0alex1010/Brilliant-Username-Changer-A-Users-Nightmare/refs/heads/main/1st%20version.html"
    curl -o "$DOWNLOAD_DIR/Version_2.html" "https://raw.githubusercontent.com/0alex1010/Brilliant-Username-Changer-A-Users-Nightmare/refs/heads/main/Version%202.html"
    curl -o "$DOWNLOAD_DIR/Version_3.html" "https://raw.githubusercontent.com/0alex1010/Brilliant-Username-Changer-A-Users-Nightmare/refs/heads/main/Version%203.html"
    curl -o "$DOWNLOAD_DIR/Version_3.1.html" "https://raw.githubusercontent.com/0alex1010/Brilliant-Username-Changer-A-Users-Nightmare/refs/heads/main/Version%203.1.html"
    curl -o "$DOWNLOAD_DIR/version_1.2.html" "https://raw.githubusercontent.com/0alex1010/Brilliant-Username-Changer-A-Users-Nightmare/refs/heads/main/version%201.2.html"
    curl -o "$DOWNLOAD_DIR/welcome.html" "https://raw.githubusercontent.com/0alex1010/Brilliant-Username-Changer-A-Users-Nightmare/refs/heads/main/welcome.html"

    # Create a menu to open the files
    clear
    open "$DOWNLOAD_DIR/welcome.html" 

    echo "Choose a version to open:"
    echo "1. Version 1.html"
    echo "2. Version 2.html"
    echo "3. Version 3.html"
    echo "4. Version 3.1.html"
    echo "5. Version 1.2.html"
    echo "6. Exit"

    read -p "Enter a number: " choice

    case "$choice" in
        1) open "$DOWNLOAD_DIR/index.html";;
        2) open "$DOWNLOAD_DIR/Version_2.html";;
        3) open "$DOWNLOAD_DIR/Version_3.html";;
        4) open "$DOWNLOAD_DIR/Version_3.1.html";;
        5) open "$DOWNLOAD_DIR/version_1.2.html";;
        6) echo "Exiting..."; 
            rm "$DOWNLOAD_DIR"/*.html; 
            exit 0;;
        *) echo "Invalid choice."; exit 1;;
    esac
done
