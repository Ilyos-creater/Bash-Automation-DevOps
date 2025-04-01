#!/bin/bash
touch todos.txt
TODO_FILE=todos.txt

echo "Please choose an action (ls - list ToDos, rm - remove ToDos, add - add a new ToDo, exit - exit Program)"
read -r Choice

# Validate Input
if [ -z "$Choice" ]; then
    echo "The provided values are wrong, please try again."
    exit 1
fi

case $Choice in

    ls) 
        if [ -s "$TODO_FILE" ]; then
            echo "Your To-Do List: "
            cat "$TODO_FILE"
        else
            echo "No To-Dos found."
        fi
    ;;

    rm)
        if [ -s "$TODO_FILE" ]; then
            echo "Enter the number of the To-Do to remove:"
            cat -n "$TODO_FILE"
            read -r todo_number

            # Check if the line number entered is valid
            if [[ "$todo_number" =~ ^[0-9]+$ ]] && [ "$todo_number" -gt 0 ]; then
                sed -i "${todo_number}d" "$TODO_FILE"
                echo "To-Do removed."
            else
                echo "Invalid To-Do number. Please try again."
            fi
        else
            echo "No To-Dos found to remove."
        fi
    ;;

    add)
        echo "Enter your new To-Do:"
        read -r new_todo
        echo "$new_todo" >> "$TODO_FILE"
        echo "New To-Do added."
    ;;

    exit)
        echo "Exiting program..."
        exit 0
    ;;

    *)
        echo "Invalid choice. Exiting program..."
        exit 1
    ;;

esac
