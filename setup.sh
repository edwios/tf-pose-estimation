#!/bin/bash

mkdir -p tf_pose/lifting/models/saved_sessions
cd tf_pose/lifting/models/saved_sessions

# fallback to curl if wget not available (e.g. git bash in Windows)
WGET='wget'
if ! [ -x "$(command -v git)" ]; then
	WGET='curl -O'
fi

echo 'Downloading models...'
${WGET} http://visual.cs.ucl.ac.uk/pubs/liftingFromTheDeep/res/init_session.tar.gz
${WGET} http://visual.cs.ucl.ac.uk/pubs/liftingFromTheDeep/res/prob_model.tar.gz

echo 'Extracting models...'
tar -xvzf init_session.tar.gz
tar -xvzf prob_model.tar.gz
rm -rf init_session.tar.gz
rm -rf prob_model.tar.gz
cd ../../../..

echo 'Done'
