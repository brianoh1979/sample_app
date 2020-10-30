cat > ~/.netrc << EOF
    machine api.heroku.com
        login "brianoh@circlici.com"
        password "1abed4d8-766e-4c04-8132-fdddc186695a"
    machine git.heroku.com
        login "brianoh@circleci.com"
        password "1abed4d8-766e-4c04-8132-fdddc186695a"
EOF

# Add heroku.com to the list of known hosts
mkdir ~/.ssh
ssh-keyscan -H heroku.com >> ~/.ssh/known_hosts

