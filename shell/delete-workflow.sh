curl -i -H "Authorization: token $1" \
    -H "Accept: application/vnd.github.v3+json" \
    -d '{
        "event_type": "delete-workflow"
      }' \
    "https://api.github.com/repos/$2/dispatches"
