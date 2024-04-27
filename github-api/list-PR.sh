#!/bin/bash

list_github_pull_requests() {
    owner="$1"
    repo="$2"
    url="https://api.github.com/repos/$owner/$repo/pulls"
    response=$(curl -sL "$url")
    
    if [[ $(echo "$response" | jq -r 'type') == "array" ]]; then
        echo "Pull requests for repository $owner/$repo:"
        echo "$response" | jq -r '.[] | "#\(.number): \(.title) - \(.html_url) (by \(.user.login))"'
    else
        echo "Failed to retrieve pull requests. Error: $response"
    fi
}

# Example usage:
list_github_pull_requests "kubernetes" "kubernetes"

