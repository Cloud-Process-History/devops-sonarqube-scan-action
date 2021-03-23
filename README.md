# SonarQube Scan GitHub Action

The `github-action-devops-sonar-scan` Github Action will scan your code with SonarQube to detects bugs, vulnerabilities and code smells.

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

- `host` - **_(Required)_** this is the Cepsa TD SonarQube server URL.
- `login` - **_(Required)_** this is the SonarQube username.
- `password` - **_(Required)_** this is the SonarQube password.

