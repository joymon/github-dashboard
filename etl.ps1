gh api user/orgs --paginate --jq '. | map({name: .login})' > .\data\organizations.json

gh api user/repos --paginate --jq '. | map({created_at: .created_at, name: .name, organization: .owner.login,license: .license.name, archived: .archived, fork: .fork, forks_count: .forks_count,open_issues_count: .open_issues_count,stars_count: .stargazers_count, watchers_count: .watchers_count,size_kb:.size,has_pages: .has_pages, last_pushed_at: .pushed_at})' > ./data/repositories.json
gh api orgs/mind-maps/issues --jq '. | map({state: .state,created_at: .created_at, repository: .repository.name, organization: .repository.owner.login})' > .\data\issues.json
#gh api orgs/mind-maps/issues --jq '. | map({state: .state,created_at: .created_at})'