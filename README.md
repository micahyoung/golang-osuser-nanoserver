# Demo of golang:nanoserver using os/user

The Golang docker images based on nanoserver are missing `c:\Windows\System32\NetApi32.dll` which makes `os/user` package fail. https://github.com/golang/go/issues/21867

This example works around this by using Docker's `COPY --from=<image>` syntax to copy in this file form the `servercore` image of the same Windows build.

Gist:
```
FROM golang:1.15-nanoserver-1809

COPY --from=mcr.microsoft.com/windows/servercore:1809 /Windows/System32/NetApi32.dll /Windows/System32/NetApi32.dll

...
```
