# /bin/sh

# Install all the junk I need
apt-get --assume-yes install wget git curl blender build-essential irssi screen chromium-browser git gvfs-bin pm-utils make automake powertop python thermald ttf-ancient-fonts unzip zsh qemu libunwind8 gettext libssl-dev libcurl3-dev zlib1g libicu-dev

# Install Mono
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian beta main" | tee /etc/apt/sources.list.d/mono-xamarin.list
apt-get update && apt-get --assume-yes install mono-complete mono-devel ca-certificates-mono

# Install ASP.NET
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh
dnvm upgrade -r coreclr
dnvm upgrade -r mono

# Install Atom
wget https://atom.io/download/deb -O atom.deb
dpkg -i atom.deb
rm atom.deb

# Install Omnisharp for Atom
apm install omnisharp-atom

# Install Unity3D
wget http://download.unity3d.com/download_unity/unity-editor-5.1.0f3+2015091501_amd64.deb -O unity-editor.deb
dpkg -i unity-editor.deb
rm unity-editor.deb

# Install SmartGit
wget http://www.syntevo.com/smartgit/download?file=smartgit/smartgit-7_0_3.deb -O smartgit.deb
dpkg -i smartgit.deb
rm smartgit.deb

echo "Finished installing everything together with dotfiles!"
echo "Happy coding $USER"
