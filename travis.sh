#!/usr/bin/env bash
set -u


export dir_base=$( cd `dirname $0`; echo $PWD; )
export repo1='github_integrations'
export dir_self=$dir_base/$repo1


git clone --depth=1 https://github.com/brownman/${repo1}.git $repo1
chmod +x $dir_self/travis.sh
bash -c $dir_self/travis.sh #delegate control to repo: github_integrations
