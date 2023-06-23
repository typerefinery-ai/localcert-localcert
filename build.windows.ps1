# env GOOS=windows GOARCH=amd64 
go build -o ${PWD}\bin\win32\localcert.exe .\cmd\localcert\main.go
if(!$?) {
    Write-Host "Build failed."
    exit 1
}
dir ${PWD}\bin\
mkdir data -ErrorAction SilentlyContinue
.\bin\win32\localcert.exe -dataDir ${PWD}\data -acceptTerms -localCert ${PWD}\\data\\cert.pem -localKey ${PWD}\\data\\key.pem -forceRenew -debug
