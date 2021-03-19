cask 'liberica-jdk16-full' do
  desc "100% open-source Java implementation"
  version '16,36'
  sha256 '766cb5a13045836cacde2c262d34955f4aecbcfcecdf45bcd6be0142895ce232'

  url "https://download.bell-sw.com/java/16%2B36/bellsoft-jdk16%2B36-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 16'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk16+36-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk16-full'

end

