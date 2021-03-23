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

You can change the analysis base directory and/ project key _(allowed characters: letters, numbers, -, \_, . and :, with at least one non-digit.)_ by using the optional input like this:

```yaml
uses: cepsadigital/devops-sonar-github-action@master
with:
  projectBaseDir: "/path/to/my-custom-project"
  projectKey: "my-custom-project"
  projectName: "my-custom-project-name"
  projectVersion: "v0.0.1"
```

## Secrets

- `host` - **_(Required)_** this is the Cepsa TD SonarQube server URL.
- `login` - **_(Required)_** this the username.
- `password` - **_(Required)_** this the passowrd.

