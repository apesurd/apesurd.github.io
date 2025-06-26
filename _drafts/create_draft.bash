#!/bin/bash

# Usage: create_draft.bash <draft_name>

draft_name=$1

if [ "$draft_name" == "" ]; then
	echo "Usage: create_draft.bash <draft_name>"
	exit 1
fi

drafts_dir="_drafts"

# remove .md from $draft_name if it exists
draft_name=${draft_name%.md}
# append the extension
draft_name="$drafts_dir/$draft_name.md"

template_filename="$drafts_dir/template.md"

echo "Creating draft $draft_name"
cp $template_filename $draft_name

if [ -e $draft_name ]; then
	echo "Draft $draft_name created"
else
	echo "Failed to create draft $draft_name"
	exit 1
fi

