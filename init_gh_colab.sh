%%shell

# wget https://github.com/cli/cli/releases/latest/download/gh_$(curl -s https://api.github.com/repos/cli/cli/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")')_linux_amd64.tar.gz

wget https://github.com/cli/cli/releases/download/v2.29.0/gh_2.29.0_linux_amd64.tar.gz

# Extract the tarball
tar -xvf gh_*.tar.gz

# Move the gh binary to a directory in the PATH
sudo mv gh_*_linux_amd64/bin/gh /usr/local/bin

# Clean up the downloaded files
rm -rf gh_*

# Verify the installation
gh --version