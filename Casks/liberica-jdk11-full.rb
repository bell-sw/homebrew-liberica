cask 'liberica-jdk11-full' do
  version '11.0.8,10'
  sha256 'bba401f9ac69423f663188c7862d98b652dfb22c757b02b5686d1c293dd42adf'

  url "https://download.bell-sw.com/java/11.0.8%2B10/bellsoft-jdk11.0.8%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.8+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end
