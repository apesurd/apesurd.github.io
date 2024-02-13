#!/bin/bash

# Usage: create_draft.bash <draft_name>

draft_name=$1

if [ "$draft_name" == "" ]; then
	echo "Usage: create_draft.bash <draft_name>"
	exit 1
fi

# append the extension
draft_name="$draft_name.md"

echo "Creating draft $draft_name"
cp template.md $draft_name

if [ -e $draft_name ]; then
	echo "Draft $draft_name created"
else
	echo "Failed to create draft $draft_name"
	exit 1
fi

