# /bin/sh

# Install all the junk I need
sudo apt-get wget git curl install blender build-essential irssi screen chromium-browser git pm-utils make automake powertop python thermald ttf-ancient-fonts unzip zsh qemu libunwind8 gettext libssl-dev libcurl3-dev zlib1g libicu-dev

# Install Mono
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian beta main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update && sudo apt-get install mono-complete mono-devel ca-certificates-mono

# Install ASP.NET
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh
dnvm upgrade -r coreclr
dnvm upgrade -r mono

# Install Atom
wget https://atom.io/download/deb -O atom.deb
dpkg -i atom-amd64.deb
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
