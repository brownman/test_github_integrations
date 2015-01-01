git clone --depth=1 https://github.com/brownman/github_integrations.git
cd github_integrations
source config.cfg
chmod +x *.sh . -R
bash -c BANK/travis_and_github/get_private_key.sh
