#!/bin/bash

. ./vars.sh

echo "Total number of folders (including all nested ones) = $total_folders"

echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$top_size_folders"

echo "Total number of files = $total_files"

echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf_files"
echo "Text files = $text_files"
echo "Executable files = $exe_files"
echo "Log files (with the extension .log) = $log_files"
echo "Archive files = $archive_files"
echo "Symbolic links = $link_files"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$top_size_files"

echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
echo "$top_size_exe_files"

echo "Script execution time (in seconds) = $(($(date +%s) - $start))"
