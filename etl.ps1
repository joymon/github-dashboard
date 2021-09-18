gh api user/orgs --paginate --jq '. | map({name: .login})' > .\data\organizations.json
gh api user/repos --paginate --jq '. | map({created_at: .created_at, name: .name, organization: .owner.login,license: .license.name, archived: .archived, fork: .fork, forks_count: .forks_count,open_issues_count: .open_issues_count,stars_count: .stargazers_count, watchers_count: .watchers_count,size_kb:.size,has_pages: .has_pages, last_pushed_at: .pushed_at})' > ./data/repositories.json

# Get authenticated user issues 
gh api user/issues --jq '. | map({state: .state,created_at: .created_at, repository: .repository.name, organization: .repository.owner.login})' > .\data\issues_joymon.raw.json
# Get issues from authenticated user's orgs
Get-Content ./data/organizations.json `
| ConvertFrom-Json `
| ForEach-Object {gh api orgs/$($_.name)/issues --jq '. | map({state: .state,created_at: .created_at, repository: .repository.name, organization: .repository.owner.login})' > .\data\issues_$($_.name).raw.json}

# Merge all issues to single file. Just parse JSON and convert back to merge. Another way https://dotnet-helpers.com/powershell/merge-combine-json-objects-using-array-in-powershell/
Get-Content -Path ./data/issues_*.raw.json `
| ConvertFrom-Json
| ConvertTo-Json
| Out-File ./data/issues.json
# remove temp raw files
Remove-Item ./data/issues_*.raw.json