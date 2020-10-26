cask 'liberica-jdk15' do
  version '15.0.1,9'
  sha256 '963738feed3b6c05afffa7ba3d0a2b0678ec087a18ab6ab61d36862f6d81005a'

  url "https://download.bell-sw.com/java/15.0.1%2B9/bellsoft-jdk15.0.1%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15.0.1+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15'

end
