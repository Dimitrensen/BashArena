#Modify the script from the previous exercise. Make the “file_count” function accept a directory as an argument. 
#Next, have the function display the name of the directory followed by a colon.

#Finally display the number of files to the screen on the next line. Call the function three times. First on the “/etc” directory, next on the “/var” directory and finally on the “/usr/bin” directory.

file_count () {
    local dir=$1
    local count=$(ls -1 "$dir" | wc -l)
    echo "Number of files in the $dir: $count"
}

file_count /etc
file_count /var
file_count /usr/bin

echo "$(pwd)/"