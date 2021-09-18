gh api user/orgs --paginate --jq '. | map({name: .login})' > .\data\organizations.json
gh api user/repos --paginate --jq '. | map({created_at: .created_at, name: .name, organization: .owner.login,license: .license.name, archived: .archived, fork: .fork, forks_count: .forks_count,open_issues_count: .open_issues_count,stars_count: .stargazers_count, watchers_count: .watchers_count,size_kb:.size,has_pages: .has_pages, last_pushed_at: .pushed_at})' > ./data/repositories.json

################# Get Issues #############################
# Get authenticated user issues 
gh api issues?filter=all --paginate --jq '. | map({repository: .repository.name, organization: .repository.owner.login,created_at: .created_at,created_by: .user.login, created_by_type: .user.type, title: .title,state: .state, assignee: .assignee.login})' > .\data\issues.json
# If want to iterate use https://docs.github.com/en/rest/reference/issues#list-organization-issues-assigned-to-the-authenticated-user
#########################################################
