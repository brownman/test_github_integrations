dir_self=$( cd `basename $0`; echo $PWD; )
repo1=github_integrations
git clone --depth=1 https://github.com/brownman/$repo1.git
chmod +x *.sh . -R
source $dir_self/config.cfg
$dir_self/ensure.sh && { bash -x $dir_self/BANK/travis_and_github/get_private_key.sh; }
