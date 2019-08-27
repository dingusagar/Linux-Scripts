#!/bin/sh

set -x

FEATURE_BRANCH_NAME="$1"
if [ -z "$1" ]; then
    echo "Give feature branch name as an argument.."
    echo "exiting.."
    exit 0
fi
echo "Pushing everything on $FEATURE_BRANCH_NAME "
git push origin $FEATURE_BRANCH_NAME
echo "Deploying $FEATURE_BRANCH_NAME to Dev.."
git checkout dev_deploy
git pull
git pull origin $FEATURE_BRANCH_NAME
git push origin dev_deploy
echo "Latest 10 Logs in dev_deploy"
git log  --pretty=oneline | head -n 10

git checkout $FEATURE_BRANCH_NAME

set +x
