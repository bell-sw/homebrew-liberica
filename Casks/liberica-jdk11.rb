cask 'liberica-jdk11' do
  desc "100% open-source Java implementation"
  version '11.0.11,9'

  if Hardware::CPU.intel?
    sha256 '1d2d0adb11e8dbe0542e6492a088f42ba24c6d7eaf05a0ac6d4d6250c5b8f61c'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jdk11.0.11%2B9-macos-amd64.pkg"
    pkg 'bellsoft-jdk11.0.11+9-macos-amd64.pkg'
  else
    sha256 '3a56debed8da4f96d3f8590052f5a10e86a50dc4d0683ccd89f8fa5e73770bf8'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jdk11.0.11%2B9-macos-aarch64.pkg"
    pkg 'bellsoft-jdk11.0.11+9-macos-aarch64.pkg'
  end

  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

