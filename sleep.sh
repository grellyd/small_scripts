sudo echo "Goodnight!"
_=$(
cd ~;
./scripts/lock_screen.sh;
sudo s2ram
)
