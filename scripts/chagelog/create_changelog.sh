#!/bin/sh

# Get the commit hash and message of the last commit from a branch with a name that starts with "release/"
commit=$1
commit_message=$(git log --pretty=format:'%s' -n 1 $commit)

# Display the commit hash and message
echo "Commit hash: $commit"
echo "Commit message: $commit_message"

# Get the commit messages from the specified commit to the HEAD commit
commit_messages=$(git log --pretty=format:%s $commit..HEAD)

# Filter the commit messages to find those that contain the pattern [MOBA-XXX]
# Collect them into a unique list
unique_messages=($(echo "$commit_messages" | grep -o '\[MOBA-[0-9]*\]' | sort -u))

# Display the unique messages
echo "Unique messages containing the pattern [MOBA-XXX]:"
for msg in "${unique_messages[@]}"
do
    msg=${msg//[\[\]]/}   # remove the square brackets
    echo "* https://treeda.atlassian.net/browse/$msg"
done
