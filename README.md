# SonarQube Scan GitHub Action

The `github-action-devops-sonar-scan` Github Action will scan your code with SonarQube to detects bugs, vulnerabilities and code smells.

## Inputs

| Name | Description | Required |Default |
| --- | --- | --- | --- |
| `host` | Cepsa TD SonarQube server URL | :heavy_check_mark: | |
| `login` | SonarQube username | :heavy_check_mark: | |
| `password` | SonarQube password | :heavy_check_mark: | |
| `projectBaseDir` | sonar.projectBaseDir analysis property | | "." |


## Usage

```yaml
on:
  workflow_dispatch:
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - name: SonarQube Scan
      uses: cepsadigital/github-action-devops-sonar-scan@master
      with:
        host: ${{ secrets.TD_SONAR_HOST }}
        login: ${{ secrets.TD_SONAR_USER }}
        password: ${{ secrets.TD_SONAR_PSW }} 
```

## Secrets

- `TD_SONAR_HOST` - **_(Required)_** this is the Cepsa TD SonarQube server URL.
- `TD_SONAR_USER` - **_(Required)_** this is the SonarQube username.
- `TD_SONAR_PSW` - **_(Required)_** this is the SonarQube password.

