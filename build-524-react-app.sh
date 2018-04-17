export no_proxy=$no_proxy, 10.22.56.10
npm config set proxy http://contractorproxywest.northgrum.com:80
npm config set https-proxy http://contractorproxywest.northgrum.com:80
rm -r node_modules
npm install -verbose
npm run build
rm -rf dist
mkdir dist
cp -R build dist
tar -cvf dist.tar dist