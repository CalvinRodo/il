#!/bin/sh


usage() { printf "
Usage:
Recommendation: %s -r recommendation
Timeline: %s -t event
Action Item: %s -a action item\n" "${0}" "${0}" "${0}" 1>&2; exit 1; }

readonly folder="${HOME}/incident-logs"
readonly today=$(date -u '+%Y-%m-%d')
readonly outputFile="${folder}/${today}.log"
readonly logDate="$(date -u '+%Y-%m-%d:%H:%M:%S')"

while getopts ":t:r:a:l" o; do
    case "${o}" in
        r)
            printf "%s|RECOMMENDATION|%s\n" "${logDate}" "${OPTARG}"  >> "${outputFile}"
            ;;
        t )
            printf "%s|TIMELINE|%s\n" "${logDate}" "${OPTARG}"  >> "${outputFile}"
            ;;
        a ) 
            printf "%s|ACTION ITEM|%s\n" "${logDate}" "${OPTARG}"  >> "${outputFile}"
            ;;
        l)
            ls -l "${folder}"/*.log
            ;;
        * )
            usage
            ;;
    esac
done
shift $((OPTIND-1))
