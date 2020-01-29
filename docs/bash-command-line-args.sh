#/bin/bash
#
# >./bash-command-line-args.sh -vf hello.txt test_arg
# verbose: 1
# output_file: hello.txt
# args: test_arg
#
# Preserves $0, $1, ...
#

# index of next arg, reset in case used in a shell
OPTIND=1

# defaults
output_file=""
verbose=""

PROG_NAME=`basename $0`

function show_help () {
    echo "Usage: $PROG_NAME [options] [arguments]"
    echo "Options:"
    echo "-f    File name"
    echo "-h    Help"
    echo "-v    Verbose"
}

while getopts "hvf:" opt; do
    case "$opt" in
    h)
        show_help
        exit 0
        ;;
    v)  verbose="-v"
        ;;
    f)  output_file=$OPTARG
        ;;
    esac
done

# pop the options
shift $((OPTIND-1))

# necessary?
#[ "${1:-}" = "--" ] && shift

echo "verbose: $verbose"
echo "output_file: $output_file"
echo "args: $@"

# end file