
# Source the configuration file for email settings
source ./disk_alert.conf

# Find partitions with a total usage rate exceeding 90%
df -H | awk 'NR>1 && $5+0 >= 90 {print $5,$1}' | while read -r usage partition
do
    hostname=$(hostname)
    now=$(date -u)

    # Send an email alert
    echo "The partition \"$partition\" on $hostname has used $usage at $now" | mail -s "$hostname Disk Usage Alert: $usage used" $RECIPIENT_EMAIL
done


