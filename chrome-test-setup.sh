echo "Updating..."
sudo apt-get update

echo "Installing Chrome for Selenium.."
cd /tmp
wget https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_110.0.5481.77-1_amd64.deb
sudo apt install --assume-yes ./google-chrome-stable_110.0.5481.77-1_amd64.deb

echo "Installing chromedriver for Selenium..."
cd /tmp
curl https://chromedriver.storage.googleapis.com/110.0.5481.77/chromedriver_linux64.zip > /tmp/chromedriver.zip
unzip chromedriver.zip
sudo mv chromedriver /usr/bin/chromedriver
chromedriver --version

chromedriver --whitelisted-ips --allowed-origins='*'
