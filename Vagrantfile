$provision = <<-SCRIPT
apt-get update
apt-get upgrade -y
apt-get install -y bash curl file git unzip xz-utils zip libglu1-mesa
snap install android-studio --classic
SCRIPT


Vagrant.configure("2") do |config|
  config.vm.box = "peru/ubuntu-20.04-desktop-amd64"
  config.vm.provider "virtualbox" do |v|
    v.gui = true
  end

  config.vm.provision "shell", inline: $provision
end