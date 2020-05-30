#!/bin/sh


usage() { printf "Usage:\nRecommendation: %s -r message\n or\nTimeline: %s -t message " "$0" "$0" 1>&2; exit 1; }

folder="$HOME/incident-logs"
today=$(date -u '+%Y-%m-%d')
outputFile="$folder/$today.log"
logDate="$(date -u '+%Y-%m-%d:%H:%M:%S')"
while getopts ":t:r:a:l:" o; do
    case "${o}" in
        r)
            printf "%s|RECOMMENDATION|%s\n" "$logDate" "${OPTARG}"  >> "$outputFile"
            ;;
        t )
            printf "%s|TIMELINE|%s\n" "$logDate" "${OPTARG}"  >> "$outputFile"
            ;;
        a ) 
            printf "%s|ACTION ITEM|%s\n" "$logDate" "${OPTARG}"  >> "$outputFile"
            ;;
        l )
            echo "$HOME/incident/*.log"
            ;;
        * )
            usage
            ;;
    esac
done
shift $((OPTIND-1))
