#!/bin/bash

while true; do
    clear
    echo "Menu:"
    echo "1. Enter a month name (e.g., jan) to get the number of days in that month."
    echo "2. Enter a month number (1-12) to get the number of days in that month."
    echo "13. Exit"
    read -p "Enter your choice (1-13): " choice

    case $choice in
        1)
            read -p "Enter a month name (e.g., jan): " month
            case "$month" in
                "jan" | "mar" | "may" | "jul" | "aug" | "oct" | "dec")
                    echo "Days in $month are: 31"
                    ;;
                "apr" | "jun" | "sep" | "nov")
                    echo "Days in $month are: 30"
                    ;;
                "feb")
                    echo "Days in $month are: 28 or 29 (leap year)"
                    ;;
                *)
                    echo "Invalid month name!"
                    ;;
            esac
            ;;
        2)
            read -p "Enter a month number (1-12): " month_number
            case $month_number in
                1 | 3 | 5 | 7 | 8 | 10 | 12)
                    echo "Days in month $month_number are: 31"
                    ;;
                4 | 6 | 9 | 11)
                    echo "Days in month $month_number are: 30"
                    ;;
                2)
                    echo "Days in month $month_number are: 28 or 29 (leap year)"
                    ;;
                *)
                    echo "Invalid month number!"
                    ;;
            esac
            ;;
        13)
            echo "Exiting the script. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option (1-13)."
            ;;
    esac

    read -p "Press Enter to continue..."
done

