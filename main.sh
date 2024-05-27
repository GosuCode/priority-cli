#!/usr/bin/env bash 

cat <<EOF
             _            _ _         
            (_)          (_) |        
  _ __  _ __ _  ___  _ __ _| |_ _   _ 
  | '_ \| '__| |/ _ \| '__| | __| | | |
  | |_) | |  | | (_) | |  | | |_| |_| |
  | .__/|_|  |_|\___/|_|  |_|\__|\__, |
  | |                             __/ |
  |_|                            |___/ 


EOF

echo "What do you want to do?"
echo "c. check the list of projects"
echo "r. Remove a project"
echo "a. add a project"
echo "p. close priority"
read -p "Enter your choice: " choice

case $choice in
  c)
    source check.sh
    ;;
  r)
    remove_project
    ;;
  a)
    source add.sh
    ;;
  p)
    echo "Closing priority"
    echo "--------------------------------"
    exit 0
    ;;
  *)
    echo "Invalid choice"
    ;;
esac

