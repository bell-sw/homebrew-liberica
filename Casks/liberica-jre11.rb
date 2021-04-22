cask 'liberica-jre11' do
  desc "100% open-source Java implementation"
  version '11.0.11,9'

  if Hardware::CPU.intel?
    sha256 '6d276afeec2aec6be3316a4f7447fd213573e699e6d01e4943568306a298b1e7'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jre11.0.11%2B9-macos-amd64.pkg"
    pkg 'bellsoft-jre11.0.11+9-macos-amd64.pkg'
  else
    sha256 '004d2291b9a33dfd7d6f269b02684d7dbcea2ff33f8b2df51fa7e512080f3cdb'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jre11.0.11%2B9-macos-aarch64.pkg"
    pkg 'bellsoft-jre11.0.11+9-macos-aarch64.pkg'
  end

  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

