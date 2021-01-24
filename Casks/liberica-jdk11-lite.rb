cask 'liberica-jdk11-lite' do
  desc "100% open-source Java implementation"
  version '11.0.10,9'
  sha256 '8abf22bf32300df5489d877dc9d11eebe471fd852abe68b421221b2d09d1f4ff'

  url "https://download.bell-sw.com/java/11.0.10%2B9/bellsoft-jdk11.0.10%2B9-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.10+9-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

