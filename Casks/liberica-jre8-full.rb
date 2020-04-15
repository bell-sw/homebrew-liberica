cask 'liberica-jre8-full' do
  version '1.8.0,252'
  sha256 'e31510c92f644ff0f9ee414fe2f0d24d84674b3df4409ab4478f6b089c0fbb74'

  url "https://download.bell-sw.com/java/8u252%2B9/bellsoft-jre8u252%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u252+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end
