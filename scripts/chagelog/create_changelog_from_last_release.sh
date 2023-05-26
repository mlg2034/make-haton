#!/bin/sh

# Get the commit hash using the git log command
commit=$(git log --pretty=format:'%h' --grep '^Merge.*release/' --first-parent -n 1)

# Run the other script and pass the commit hash as an argument
./scripts/chagelog/create_changelog.sh $commit
