# SonarQube Scan GitHub Action

Using this GitHub Action, scan your code with SonarQube scanner to detects bugs, vulnerabilities and code smells in more than 20 programming languages!

<img src="https://www.sonarqube.org/assets/logo-31ad3115b1b4b120f3d1efd63e6b13ac9f1f89437f0cf6881cc4d8b5603a52b4.svg" width="320px">

SonarQube is an open-source platform developed by SonarSource for continuous inspection of code quality to perform automatic reviews with static analysis of code to detect bugs, code smells, and security vulnerabilities on 20+ programming languages.

## Usage

The workflow, usually declared in `.github/workflows/main.yml`, looks like:

```yaml
on: push
name: Main Workflow
jobs:
  sonarQubeTrigger:
    name: SonarQube Trigger
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: SonarQube Scan
      uses: cepsadigital/devops-sonar-github-action@master
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

- `host` - **_(Required)_** this is the SonarQube server URL.
- `login` - **_(Required)_** this the username.
- `password` - The password that goes with the `login` username.


## License

The Dockerfile and associated scripts and documentation in this project are released under the MIT License.

Container images built with this project include third party materials.
