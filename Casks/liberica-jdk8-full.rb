cask 'liberica-jdk8-full' do
  desc "100% open-source Java implementation"
  version '1.8.0,292'

  if Hardware::CPU.intel?
    sha256 '3bf07a637f0971c17f318245f7953bc4c6aa8f8a8dcd136ea40d22340acfb3c6'

    url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jdk8u292%2B10-macos-amd64-full.pkg"
    pkg 'bellsoft-jdk8u292+10-macos-amd64-full.pkg'
  else
    sha256 'e88106a94e67c9b17c6d378016ba262381f4ff3039fa94216ee5209220f40df4'

    url "https://download.bell-sw.com/java/8u292%2B11/bellsoft-jdk8u292%2B11-macos-aarch64-full.pkg"
    pkg 'bellsoft-jdk8u292+11-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

