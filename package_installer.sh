PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $1|grep "install ok installed")
echo Checking for somelib: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "$1 not installed. Setting up $1."
  sudo apt-get --force-yes --yes install $1
fi
