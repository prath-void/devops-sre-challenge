#!/bin/bash

# checking the disk usage function
check_disk_usage() 
{
    echo "Disk Usage:"
    df -h
    echo ""
}

# monitor running service function
check_running_services() 
{
    echo "Running Services:"
    systemctl list-units --type=service --state=running
    echo ""
}

# Assessing memory usage function
check_memory_usage() 
{
    echo "Memory Usage:"
    free -h
    echo ""
}

# Evaluate CPU usage Function
check_cpu_usage() 
{
    echo "CPU Usage:"
    top -b -n1 | grep "Cpu(s)"
    echo ""
}

# report via email function
send_report() 
{
    report=$(mktemp)

    {
        echo "+++++ System Health Report +++++"
        check_disk_usage
        check_memory_usage
        check_cpu_usage
        check_running_services
        echo "+++++++++++++++++++++++++++++++"
        
    } > "$report"

    # Sending the report via email/
    mail -s "System Health Report" prathameshssnt@gmail.com < "$report"
    
    rm "$report"
}

#  menu function
show_menu() 
{
    clear
    echo "++++++++++++ MENU +++++++++++++"
    echo "1. Check Disk Usage"
    echo "2. Monitor Running Services"
    echo "3. Assess Memory Usage"
    echo "4. Evaluate CPU Usage"
    echo "5. Send Report via Email"
    echo "6. Exit"
    echo "+++++++++++++++++++++++++++++++"
}

# Main loop
while true; do
    show_menu
    read -p "Select an option from the menu: " choice
    
    case $choice in
        1) check_disk_usage ;;
        2) check_running_services ;;
        3) check_memory_usage ;;
        4) check_cpu_usage ;;
        5) send_report ;;
        6) exit 0 ;;
        *) echo "Invalid option! Please try again." ;;
    esac
    
done
