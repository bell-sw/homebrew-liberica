cask 'liberica-jdk8' do
  desc "100% open-source Java implementation"
  version '1.8.0,292'

  if Hardware::CPU.intel?
    sha256 'd2716eba88a0c57f62f18d099a5ad4d6764370cc564df9c2a67f178c8b84b592'

    url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jdk8u292%2B10-macos-amd64.pkg"
    pkg 'bellsoft-jdk8u292+10-macos-amd64.pkg'
  else
    sha256 '20d9398fc9c4ab3b1734c16138a294f5d0f02b94a89902daca8bd2aaec1f9c30'

    url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jdk8u292%2B10-macos-aarch64.pkg"
    pkg 'bellsoft-jdk8u292+10-macos-aarch64.pkg'
  end

  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

