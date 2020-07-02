echo 'installing and configuring go'
wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
gunzip go1.14.4.linux-amd64.tar.gz
tar -xvf go1.14.4.linux-amd64.tar
mv go /usr/local/
sleep 60
mkdir $HOME/go
sed -i '$ a export GOPATH="$HOME/go"' ~/.bashrc
sed -i '$ a export PATH="$PATH:/usr/local/go/bin"' ~/.bashrc
. ~/.bashrc
go get -u -v golang.org/x/crypto/ssh
go get -u -v github.com/hashicorp/terraform
go get -u -v github.com/josenk/terraform-provider-esxi
cd $GOPATH/src/github.com/josenk/terraform-provider-esxi
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-w -extldflags "-static"' -o terraform-provider-esxi_`cat version`
cp terraform-provider-esxi_`cat version` /usr/local/bin
echo 'go installed and configured'
