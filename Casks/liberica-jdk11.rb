cask 'liberica-jdk11' do
  desc "100% open-source Java implementation"
  version '11.0.10,9'
  sha256 '03eee3d90789efb9c2de28a6f6e7bf52261e2408db2a4785f18519adbf032df4'

  url "https://download.bell-sw.com/java/11.0.10%2B9/bellsoft-jdk11.0.10%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.10+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

