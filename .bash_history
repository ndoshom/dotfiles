doas mv .local/share/applications/firefox.desktop /usr/share/applications/
ls /usr/share/applications/ | fzf
vim /usr/share/applications/firefox.desktop 
rm /usr/share/applications/firefox.desktop 
doas rm /usr/share/applications/firefox.desktop 
vim /usr/share/applications/brave-browser.desktop 
firefox
vim /usr/share/applications/brave-browser.desktop 
vim /usr/share/applications/firefox.desktop
doas chmod +x /usr/share/applications/firefox.desktop 
which firefox
bluetoothctl
bluetooth
rfkill
vpi bluez
add-service bluetoothd
sv up bluetoothd
doas sv up bluetoothd
sv status bluetoothd
doas sv status bluetoothd
vpi libspa-bluetooth
bluetoothctl
exit
nvim .config/hypr/hyprland.conf 
python
doas xbps-install -Su
doas xbps-install -Su
add-service libvirtd
add-service
doas sv up libvirtd
doas sv status libvirtd
virt-manager 
doas virt-manager 
doas usermod -aG libvirt ns
exit
vpi virt-manager qemu-kvm
vpi virt-manager libvirt
exit
doas vpm query kvm
doas vpm querry kvm
doas vpm query qemu
doas vpm query 
doas vpm query -L
doas xbps-query -Rs kvm
doas xbps-query -Rs qemu
doas virt-manager
virt-manager 
vpi virt-manager qemu kvm 
vpi virt-manager qemu
virt-manager 
add-service virtlogd
doas sv up virtlogd
doas vpm update virt-manager
virt-manager 
ip link
virt-manager 
ip a
bluetoothctl
bluetoothctl
bluetoothctl connect 01:4B:C0:2A:DC:96
pavucontrol 
bluetoothctl disconnect 01:4B:C0:2A:DC:96
pavucontrol 
reboot
pavucontrol 
doas sv down bluetooth
add-service 
doas sv down bluetoothd
pavucontrol 
doas vim /usr/share/applications/
ls .local/share/applications/
zen 
which zen
doas mv .local/share/applications/userapp-Zen-BQUO82.desktop /usr/share/applications/

doas nvim /usr/share/applications/userapp-Zen-BQUO82.desktop 
which zen
doas nvim /usr/share/applications/userapp-Zen-BQUO82.desktop 
doas mv /usr/share/applications/userapp-Zen-BQUO82.desktop /usr/share/applications/zen.desktop
bluetoothctl disconnect 01:4B:C0:2A:DC:96
bluetoothctl disconnect 01:4B:C0:2A:DC:96
bluetoothctl disconnect 01:4B:C0:2A:DC:96
doas vpm brave-browser
doas vpm remove brave-browser
doas vpm remove brave
doas vpm remove brave-bin
nix profile install nixpkgs#brave
nix profile install nixpkgs#brave
brave
fzf
vim .nix-profile/share/applications/brave-browser.desktop 
doas cp .nix-profile/share/applications/brave-browser.desktop /usr/share/applications/
doas nvim /usr/share/applications/brave-browser.desktop 
ls /usr/share/applications/ | fzf
doas nvim /usr/share/applications/zen.desktop 
ping 8.8.8.8
exit
ls
ls
vim zen.nix 
nix-shell -p alejandra
ls .nix-profile/
vim .bashrc 
exit
nix-shell -p alejandra
vim .bashrc 
reboot
vim zen.nix 
nix-shell -p alejandra
vim shell.nix 
nix-shell
alejandra
alejandra --help
alejandra zen.nix 
vim shell.nix zen.nix 
alejandra zen.nix 
alejandra
alejandra zen.nix 
nix-build zen.nix 
vim zen.nix 
nix-build zen.nix 
vim zen.nix 
nix-build zen.nix 
vim zen.nix 
nix-build zen.nix 
nix-build zen.nix 
vim zen.nix 
vim zen.nix 
alejandra flake/.
ls
cd flake/
ls
mkdir scripts
ls
nvim scripts/default.nix
ls
nvim scripts/add-service.nix
zen
cd flake/
alejandra
alejandra ./
nvim home.nix 
nvim home.nix 
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-channel --update
nix-shell '<home-manager>' -A install
nix-channel --list
nix-channel --remove nixos
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
nix-channel --list
nix-channel --update
nix-shell '<home-manager>' -A install
home-manager switch --flake .
nvim home.nix 
nvim flake.nix 
home-manager switch --flake .
nvim home.nix 
home-manager switch --flake .
nvim home.nix 
home-manager switch --flake .
nvim home.nix 
home-manager switch --flake .
nvim scripts.nix 
nvim home.nix 
home-manager switch --flake .
nvim flake.nix 
home-manager switch --flake .
nvim home.nix 
nvim flake.nix 
home-manager switch --flake .
nvim scripts.nix 
home-manager switch --flake .
nvim home.nix 
home-manager switch --flake .
nvim scripts.nix 
home-manager switch --flake .
nvim home.nix 
nvim flake.nix 
home-manager switch --flake .#ns
nvim flake.nix 
home-manager switch --flake .#ns
nvim flake.nix 
home-manager switch --flake .#ns
nvim home.nix 
home-manager switch --flake .#ns
nvim home.nix 
home-manager switch --flake .#ns
home-manager switch --flake .#ns
s
ls
nix-shell 
ls
cd flake
git init .
git branch -m main
git add ./
git status
home-manager switch --flake .#ns
nvim flake/scripts.nix 
nvim flake/home.nix 
nvim default.nix 
nvim flake/scripts/default.nix 
ls
cd flake/
nvim home.nix 
nvim scripts/add-service.nix 
nvim scripts/default.nix 
ls
git rm scripts.nix 
git -f rm scripts.nix 
git  rm -f scripts.nix 
ls
git add --all
home-manager switch --flake .#ns
nvim home.nix 
home-manager switch --flake .#ns
nix-repl
nix repl
cd
cd flake/
ls
home-manager switch --flake .#ns
cd flake/
nvim home.nix 
home-manager switch --flake .#ns
nix profile remove add-service
nix profile list
nix profile remove add-service
nix profile remove addservice
nix profile remove add-service
home-manager switch --flake .#ns
ls
nix-shell '<home-manager>' -A install
home-manager switch --flake .#ns
nix profile remove nix/store/w7hnl78il6xm0i84nl1ffyc1zhmh51nq-add-service/bin/add-service
nix profile list
nix profile remove 10
nix profile list
nix profile remove 9
nix profile list
nix profile remove 0
nix profile list
nitch
home-manager switch --flake .#ns
nix-shell '<home-manager>' -A install
home-manager switch --flake .#ns
nvim home.nix 
nvim scripts/add-service.nix 
home-manager switch --flake .#ns
which zen
rm /usr/local/bin/zen 
doas rm /usr/local/bin/zen 
zed
doas zed
nvim home.nix 
home-manager switch --flake .#ns
nvim home.nix 
home-manager switch --flake .#ns
nvim home.nix 
home-manager switch --flake .#ns
hx
nix repl --extra-experimental-feature pipe-operators
nix repl --extra-experimental-features pipe-operators
nix repl --extra-experimental-features pipe-operator
nix repl
hx /etc/nix/nix.conf
nvim /etc/nix/nix.conf
nix repl
doas sv down nix-daemon
doas sv status nix-daemon
doas sv up nix-daemon
doas sv status nix-daemon
nix reply
nix repl
doas vpm remove nix
sudo rm -rf /nix
doas rm -rf /nix
sudo sv stop nix-daemon
doas sv stop nix-daemon
doas rm -rf /nix
sudo rm -rf /etc/sv/nix-daemon /var/service/nix-daemon
sh <(curl -L https://nixos.org/nix/install) --no-daemon
sh <(curl -L https://nixos.org/nix/install) --daemon
export NIX_BUILD_GROUP_ID=993
sh <(curl -L https://nixos.org/nix/install) --daemon
sh <(curl -L https://nixos.org/nix/install) --daemon
doas userdel nixbld1
doas userdel nixbld2
doas userdel nixbld3
doas userdel nixbld4
doas userdel nixbld5
doas userdel nixbld6
doas userdel nixbld7
doas userdel nixbld8
doas userdel nixbld9
doas userdel nixbld10
doas userdel nixbld11
sh <(curl -L https://nixos.org/nix/install) --daemon
sh <(curl -L https://nixos.org/nix/install) --daemon
sh <(curl -L https://nixos.org/nix/install) --daemon
sh <(curl -L https://nixos.org/nix/install) --daemon
doas sv start nix-daemon
exit
sudo mkdir -p /etc/sv/nix-daemon
sudo nano /etc/sv/nix-daemon/run
sudo nvim /etc/sv/nix-daemon/run
sudo chmod +x /etc/sv/nix-daemon/run
sudo ln -s /etc/sv/nix-daemon /var/service/
doas nvim /etc/nix/nix.conf
ls
cd flake/
ls
home-manager switch --flake .#ns
nix-channel --list
nix
reboot
nix --version
nix repl
nix profile install nixpkgs#home-manager
nix profile install nixpkgs#home-manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-channel --update
home-manager switch --flake .#ns
cd flake/
home-manager switch --flake .#ns
poweroff
echo "# flake" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ndoshom/flake.git
git push -u origin main
git config --global user.email "ndosho1@gmail.com"
git config --global user.name "ndosho"
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ndoshom/flake.git
git push -u origin main
cat README.md 
git log
git remote origin https://github.com/ndoshom/flake.git
git remote add origin https://github.com/ndoshom/flake.git
git push -u origin main
git remote remove origin 
git remote add origin git@github.com:ndoshom/flake.git
ssh
ssh-keygen -t ed25519 -C "ndosho1@gmail.com"
ssh-agent 
ssh-add ~/.ssh/id_ed25519
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub 
git push -u origin main
git status
pwd
rm -rf .git
git status
cd flake/
git status
cd
ls
pwd
cd flake/
pwd
rm -rf git
rm -rf .git
echo "# flake" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:ndoshom/flake.git
git push -u origin main
git push -u origin main
git add --all
git status
git push -u origin main
git commit -m "Sripts and basic packages"
git push -u origin main
nvim flake/
cd flake/
ls
home-manager switch --flake .#ns
home-manager switch --flake .#ns
alejandra 
alejandra ./
nvim flake.nix 
ls
rm README.md 
rm -rf Graphite-gtk-theme/
ls
nix shell
nix-shell
nvim shell.nix 
nvim flake/flake.nix 
nix shell
cd flake/
nix shell
nvim flake/flake.nix 
nvim flake.nix 
nix shell
nvim flake.nix 
nix shell
git add --all
nix shell
nix develop
nvim flake.nix 
nix develop
alejanra ./
nix develop
nix develop
alejandra ./
nvim home.nix 
git add --all
git commit -m "Added Dev shells for formatting nix"
git push
poweroff
brave 
poweroff
nvim flake/home.nix 
cd flake/
home-manager switch --flake .#ns
brave
nvim .config/hypr/hypridle.conf
nvim .config/hypr/hyprland.conf 
addservice 
nvim .config/hypr/hyprlock.conf
nvim .config/hypr/hyprland.conf 
hyprlock 
nvim .config/hypr/hyprlock.conf
nvim .config/hypr/hyprland.conf 
ls
ls Downloads/
nvim .config/hypr/hyprlock.conf
hyprlock 
nvim .config/hypr/hyprlock.conf
hyprlock 
ls
cd flake/
nvim home.nix 
home-manager switch --flake .#ns
doas xbps-query brave
doas xbps-query 
doas xbps-query firefox
doas xbps-query -s brave
doas xbps-query -s firefox
doas xbps-query -s 
doas xbps-query -s vim
doas xbps-query -s brave
doas xbps-query -s brave-bin
doas vpm install sxiv mpd mpv
doas vpm install sxiv mpd 
doas vpm install sxiv 
doas vpm remove brave
doas vpm remove brave-bin
nix profile add nixpkgs#brave
brave
nvim /usr/share/applications/brave.desktop
poweroff
nvim .bashrc 
exit
nix
nvim .bashrc 
source .bashrc 
nix
nvim .bashrc 
source .bashrc 
nvim flake/home.nix 
nix develop 
cd flake/
nix develop 
alejandra ./
cd flake/
home-manager switch --flake .#ns
home-manager switch --flake .#ns
nvim home.nix 
emmpty
doas emptty
doas vpm install fish
cd flake
nvim home.nix 
home-manager switch --flake .#ns
home-manager switch -b backup
home-manager switch --flake .#ns
mv ../.config/fish/config.fish ../
home-manager switch --flake .#ns
fish
fish
nvim home.nix 
home-manager switch --flake .#ns
home-manager switch --flake .#ns
fish
fish
fish
doas emptty
emptty
doas emptty
