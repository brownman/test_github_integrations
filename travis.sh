git clone --depth=1 https://github.com/brownman/github_integrations.git
chmod +x *.sh . -R
cd github_integrations
source config.cfg
./ensure.sh && { bash -x BANK/travis_and_github/get_private_key.sh; }
