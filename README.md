| Area          |      Badges  |
|:----------    |:-------------|
| Build         | [![ETL-PowerShell](https://github.com/joymon/github-dashboards/actions/workflows/etl-powershell.yml/badge.svg)](https://github.com/joymon/github-dashboards/actions/workflows/etl-powershell.yml) |
| Code | ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/joymon/github-dashboards) ![GitHub repo size](https://img.shields.io/github/repo-size/joymon/github-dashboards) [![](https://tokei.rs/b1/github/joymon/github-dashboards)](https://github.com/joymon/github-dashboards) |
| Issues | [![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/joymon/github-dashboards.svg)](http://isitmaintained.com/project/joymon/github-dashboards "Average time to resolve an issue") [![Percentage of issues still open](http://isitmaintained.com/badge/open/joymon/github-dashboards.svg)](http://isitmaintained.com/project/github-dashboards "Percentage of issues still open") |

# GitHub Dashboards
Power BI Dashboards for GitHub across all organizations and projects

Unfortunately GitHub [doesn't allow iframe embedding inside markdown.](https://github.github.com/gfm/#disallowed-raw-html-extension-). Hence no PowerBI report embeddeding in readme.md. Please view [live dashboard](https://app.powerbi.com/view?r=eyJrIjoiZjVkNTExMjgtYTYyMS00MWRmLWEwMmItZjBmNjcyYjJiMGIyIiwidCI6IjZiYTQxYTgzLTJmOWYtNGQzMi1iNmU0LTY1YWRlNTBiZDcyMiIsImMiOjN9) or click on the images below

# Images
## Screenshot of organizations dashboard
[![Organizations screenshot](images/organizations.PNG)][1]

## Screenshot of repositories dashboard

[![Repositories screenshot](images/repositories.PNG)][2]

## Screenshot of issues dashboard

[![Issues screenshot](images/issues.PNG)][3]
# Architecture
![Architecture](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/joymon/github-dashboards/main/diagrams/container.puml&fmt=svg)
# Built-With

- [GitHub CLI - ETL tool to pull data from GitHub.com](https://cli.github.com)
- [PowerShell - Just to trigger GitHub CLI based ETL (Optional)](https://github.com/features/actions)
- :open_file_folder: [GitHub - as source control](github.com)
- :arrow_forward: [GitHub Actions - Run ETL pipeline using GitHub CLI](https://github.com/features/actions)
- [Power BI - Dashboards visualization](https://powerbi.microsoft.com/)   

[1]: https://app.powerbi.com/view?r=eyJrIjoiZjVkNTExMjgtYTYyMS00MWRmLWEwMmItZjBmNjcyYjJiMGIyIiwidCI6IjZiYTQxYTgzLTJmOWYtNGQzMi1iNmU0LTY1YWRlNTBiZDcyMiIsImMiOjN9&pageName=ReportSection "Click to view Power BI Dashboard"
[2]: https://app.powerbi.com/view?r=eyJrIjoiZjVkNTExMjgtYTYyMS00MWRmLWEwMmItZjBmNjcyYjJiMGIyIiwidCI6IjZiYTQxYTgzLTJmOWYtNGQzMi1iNmU0LTY1YWRlNTBiZDcyMiIsImMiOjN9&pageName=ReportSection4d08403eadbb0e10ce84 "Click to view Power BI Dashboard"
[3]: https://app.powerbi.com/view?r=eyJrIjoiZjVkNTExMjgtYTYyMS00MWRmLWEwMmItZjBmNjcyYjJiMGIyIiwidCI6IjZiYTQxYTgzLTJmOWYtNGQzMi1iNmU0LTY1YWRlNTBiZDcyMiIsImMiOjN9&pageName=ReportSection784cb0d10859315038d5 "Click to view Power BI Dashboard"
