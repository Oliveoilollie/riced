
time2="10/6/2025 12:05AM"
let current=$(date +%s)
timestamp2=$(date -d "$time2" +%s)
time_difference=$((timestamp2 - current))
days_difference=$((time_difference / 86400))


echo $days_difference days left
