repos=$(gh repo list golangFame --json name -q '.[].name')

# Iterate over each repository and delete if it starts with '__'
for repo in $repos; do
    if [[ $repo == __* ]]; then
        delete_cmd="gh repo delete golangFame/$repo --confirm"
        eval "$delete_cmd"
    fi
done
