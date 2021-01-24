cask 'liberica-jre11' do
  desc "100% open-source Java implementation"
  version '11.0.10,9'
  sha256 '0e7300525b8d8a5ed590132f311ab85dcaf18c10a00669f0e36db437515af7c7'

  url "https://download.bell-sw.com/java/11.0.10%2B9/bellsoft-jre11.0.10%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.10+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

