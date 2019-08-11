# Github Action for curl

Wraps the curl CLI to be used in Github Actions. See also [Github Action for wget](https://github.com/marketplace/actions/github-action-for-wget).


## Features
 * make http requests
 * http errors are treated as errors


## Usage

### Github Actions
```
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - name: curl
      uses: wei/curl@master
      with:
        args: https://httpbin.org/get
```

```
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - name: curl
      uses: wei/curl@master
      with:
        args: -X POST https://httpbin.org/post
```

```
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: curl
      uses: wei/curl@master
      with:
        args: --upload-file .github/workflows/main.yml https://transfer.sh/main-workflow.yml
```

### Docker
```
docker run --rm $(docker build -q .) \
  https://httpbin.org/get
```


## Author
[Wei He](https://github.com/wei) _github@weispot.com_


## License
[MIT](https://wei.mit-license.org)
