# env GOOS=windows GOARCH=amd64 
go build -o ${PWD}\bin\localcert.exe .\cmd\localcert\main.go
dir ${PWD}\bin\
mkdir data -ErrorAction SilentlyContinue
.\bin\localcert.exe -dataDir ${PWD}\data -acceptTerms
