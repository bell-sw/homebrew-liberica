cask 'liberica-jdk11-full' do
  version '11.0.6,10'
  sha256 'b0a09775e14e099afdd9d7c6ff795a84ded813f337eb3278a3287a76f42f1c24'

  url "https://download.bell-sw.com/java/11.0.6%2B10/bellsoft-jdk11.0.6%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.6+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end
