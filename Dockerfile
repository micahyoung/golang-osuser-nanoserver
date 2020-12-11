FROM golang:1.15-nanoserver-1809

COPY --from=mcr.microsoft.com/windows/servercore:1809 /Windows/System32/NetApi32.dll /Windows/System32/NetApi32.dll

COPY main.go main.go

RUN go run main.go
