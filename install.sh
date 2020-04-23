echo "=== BEGIN Install mono requirements ==="
  # SOURCE: https://www.mono-project.com/download/stable/#download-lin
  sudo apt install gnupg ca-certificates --yes
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
  echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
  sudo apt update --yes

echo "=== BEGIN Mono installation ==="
  sudo apt install mono-devel --yes # Other options: mono-dbg, mono-complete.

echo "=== BEGIN Mono Verification ==="
  # Source: https://www.mono-project.com/docs/getting-started/mono-basics/
  csc hello.cs
  mono hello.exe
  csharp -e 'new System.Net.WebClient ().DownloadString ("https://www.nuget.org")'

echo "=== BEGIN Choco requirements ==="
  # Source: https://github.com/chocolatey/choco#other-platforms
  sudo apt install apt-transport-https dirmngr gnupg ca-certificates --yes
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
  # echo "deb https://download.mono-project.com/repo/debian stable-buster main"  | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
  # echo "deb https://download.mono-project.com/repo/debian stable-stretch main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
  echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main"  | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
  # echo "deb https://download.mono-project.com/repo/ubuntu stable-xenial main"  | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
  sudo apt-get update --yes
  sudo apt-get install mono-devel --yes

echo "=== BEGIN Choco Install ==="
  cd
  git clone https://github.com/chocolatey/choco.git
  cd choco
  ./build.sh -v

echo "=== DONE ==="