PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $1|grep "install ok installed")
echo Checking for somelib: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "$1 not installed. Setting up $1."
  sudo apt-get --allow-downgrades --allow-remove-essential --allow-change-held-packages install $1
  # DEPRECATED sudo apt-get --force-yes --yes install $1
fi
