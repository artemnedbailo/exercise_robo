<!-- EXERCISE_ROBO -->

# exercise_robo

## Preconditions before setup

Should be downloaded and added to PATH latest `chromedriver`.

Version of Python is `3.8`

<!-- GETTING STARTED -->

## Getting started

### Setup the project

1. Create virtual environment.
2. Activate virlual environment
3. If you have installed already `invoke` use the following command:

```
invoke setup
```

or if not use this:

```
pip install -r requirements.txt
```

### Test run

For functional tests with reports use command:

```
invoke test.func
```

For functional tests without reports use command:

```
invoke test.func_no_reports
```
