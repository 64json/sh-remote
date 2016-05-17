# sh-remote
It helps you run a bash shell script with URL quickly, by automatically downloading and running the script.

**NOTE** that this command does **NOT** run the script on the remote server.

### Installation
```console
$ curl -fsSL https://git.io/sh-remote | sh
```

### Usage
It is basically same as `sh` command, but simply change **`sh`** to **`shr`** and **local path of the script** to **remote URL**.
```console
$ shr https://raw.githubusercontent.com/parkjs814/sh-remote/master/test/runme.sh
```

You can also use `shr` with arguments, which will be passed to `sh` command
```console
$ shr https://raw.githubusercontent.com/parkjs814/sh-remote/master/test/runme.sh --name Jason
```