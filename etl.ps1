gh auth login
"start: etl.ps1"
gh api user/orgs --paginate --jq '. | map({name: .login})' > .\data\organizations.json
"Pulled organizations data"
gh api user/repos --paginate --jq '. | map({created_at: .created_at, name: .name,html_url: .html_url, organization: .owner.login,organization_html_url: .owner.html_url, license: .license.name, archived: .archived, fork: .fork, forks_count: .forks_count,open_issues_count: .open_issues_count,stars_count: .stargazers_count, watchers_count: .watchers_count,size_kb:.size,has_pages: .has_pages, last_pushed_at: .pushed_at})' > ./data/repositories.json
"Pulled repositories data"
################# Get Issues #############################
# Get authenticated user issues 
gh api issues?filter=all --paginate --jq '. | map({repository: .repository.name, organization: .repository.owner.login,created_at: .created_at,created_by: .user.login, created_by_type: .user.type, title: .title,state: .state, assignee: .assignee.login,comments_count: .comments, html_url: .html_url})' > .\data\issues.json
"Pulled issues data"
# If want to iterate use https://docs.github.com/en/rest/reference/issues#list-organization-issues-assigned-to-the-authenticated-user
#########################################################
