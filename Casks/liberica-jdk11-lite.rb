cask 'liberica-jdk11-lite' do
  desc "100% open-source Java implementation"
  version '11.0.9.1,1'
  sha256 '06595e929afe19b148bedbd27b506d5287202ef9ceb022fe000c07f08fecbb06'

  url "https://download.bell-sw.com/java/11.0.9.1%2B1/bellsoft-jdk11.0.9.1%2B1-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.9.1+1-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

