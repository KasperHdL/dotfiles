# /bin/sh

# Install download packages, download dotfiles and install em
sudo apt-get install wget git curl
wget https://github.com/webpro/dotfiles/tarball/master | tar -xzv -C ~/.dotfiles --strip-components=1 --exclude='{.gitignore}'
sh $HOME/.dotfiles/install.sh

# Install all the junk I need
sudo apt-get install blender build-essential irssi screen chromium-browser git pm-utils make automake powertop python thermald ttf-ancient-fonts unzip zsh qemu libunwind8 gettext libssl-dev libcurl3-dev zlib1g libicu-dev

# Install Mono
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian beta main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update && sudo apt-get install mono-complete mono-devel ca-certificates-mono

# Install ASP.NET
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev sh && source ~/.dnx/dnvm/dnvm.sh
dnvm upgrade -r coreclr
dnvm upgrade -r mono

apm install omnisharp-atom
