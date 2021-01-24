cask 'liberica-jdk15' do
  desc "100% open-source Java implementation"
  version '15.0.2,10'
  sha256 'e1aa1a74827979a7b96c28434c501600cfedd84e91bb04426faf3eee0b9da43c'

  url "https://download.bell-sw.com/java/15.0.2%2B10/bellsoft-jdk15.0.2%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15.0.2+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15'

end

