cask 'liberica-jdk8' do
  desc "100% open-source Java implementation"
  version '1.8.0,292'

  if Hardware::CPU.intel?
    sha256 'd2716eba88a0c57f62f18d099a5ad4d6764370cc564df9c2a67f178c8b84b592'

    url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jdk8u292%2B10-macos-amd64.pkg"
    pkg 'bellsoft-jdk8u292+10-macos-amd64.pkg'
  else
    sha256 '63b263e6bbecaf90cb22a5038ea941032537ec3b2551f7a39ce5d3f75c3e8948'

    url "https://download.bell-sw.com/java/8u292%2B11/bellsoft-jdk8u292%2B11-macos-aarch64.pkg"
    pkg 'bellsoft-jdk8u292+11-macos-aarch64.pkg'
  end

  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

