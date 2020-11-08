cask 'liberica-jdk11-full' do
  desc "100% open-source Java implementation"
  version '11.0.9.1,1'
  sha256 '219d93a8db4277d251456cac7cf1cb2a13eff95f280e5e433a6d0d9d23065655'

  url "https://download.bell-sw.com/java/11.0.9.1%2B1/bellsoft-jdk11.0.9.1%2B1-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.9.1+1-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

