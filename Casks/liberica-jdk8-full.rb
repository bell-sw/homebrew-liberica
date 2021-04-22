cask 'liberica-jdk8-full' do
  desc "100% open-source Java implementation"
  version '1.8.0,292'

  if Hardware::CPU.intel?
    sha256 '3bf07a637f0971c17f318245f7953bc4c6aa8f8a8dcd136ea40d22340acfb3c6'

    url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jdk8u292%2B10-macos-amd64-full.pkg"
    pkg 'bellsoft-jdk8u292+10-macos-amd64-full.pkg'
  else
    sha256 '88895a972211607a36063a98c503243adaf82699324619062576c08b351e81a5'

    url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jdk8u292%2B10-macos-aarch64-full.pkg"
    pkg 'bellsoft-jdk8u292+10-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

