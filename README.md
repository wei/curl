# Github Action for curl

Wraps the curl CLI to be used in Github Actions. See also [Github Action for wget](https://github.com/marketplace/actions/github-action-for-wget).


## Features
 * make http requests
 * http errors are treated as errors


## Usage

### Github Actions
```
action "curl" {
  uses = "wei/curl@master"
  args = "https://httpbin.org/get"
}
```

```
action "curl" {
  uses = "wei/curl@master"
  args = "-X POST https://httpbin.org/post"
}
```

```
action "curl" {
  uses = "wei/curl@master"
  args = "--upload-file .github/main.workflow https://transfer.sh/main.workflow"
}
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
