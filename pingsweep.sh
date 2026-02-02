#!/bin/bash


# Prints usage information
function usage() {
	echo "Usage: $0"
	exit 1
}

# Pingsweep command for the Onyx nodes
function pingsweep_cmd() {
	local base="onyxnode"
	echo "Pinging nodes... TBD"
}

function main() {
	while getopts ":hp" opt; do
		case ${opt} in
		h) usage ;;
		p) pingsweep_cmd ;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			usage
			;;
		esac
	done
	shift $((OPTIND -1))
}

##  Script entry point
if [ $# -eq 0 ]; then
	usage
else
	main "$@"
fi