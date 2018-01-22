# Fix locale
sed -i 's,# en_US.UTF-8 UTF-8,en_US.UTF-8 UTF-8,g' /etc/locale.gen
locale-gen

# Upgrade all packages
# apt-get update -y
# apt-get upgrade -y
# apt-get dist-upgrade -y
