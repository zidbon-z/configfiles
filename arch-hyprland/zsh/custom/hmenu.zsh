# Harpoon for directories


# Open menu to select directory to cd into
alias h='cd $(cat $HOME/hdir.txt | fzf --height=50%)'
# Add a directory to the list of directories to cd into
alias ha='pwd >> $HOME/hdir.txt'
# Delete a directory from the list of directories to cd into
alias hd="cat -n $HOME/hdir.txt | fzf --height=50% | grep -o "." | head -n 6 | tail -n 1 | xargs -I {} sed -i '{}d' $HOME/hdir.txt"
