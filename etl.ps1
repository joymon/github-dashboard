gh api user/orgs --jq '. | map({name: .login})' > .\data\organizations.json
gh api orgs/mind-maps/issues --jq '. | map({state: .state,created_at: .created_at, repository: .repository.name, organization: .repository.owner.login})' > .\data\issues.json
#gh api orgs/mind-maps/issues --jq '. | map({state: .state,created_at: .created_at})'