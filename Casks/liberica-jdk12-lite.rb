cask 'liberica-jdk12-lite' do
  version '12.0.2,10'
  sha256 '4ccc56e7fd0f5565b0ec0c6d9e30bda8af9f36ab8726de81830c124a2d4eeb44'

  url "https://download.bell-sw.com/java/12.0.2/bellsoft-jdk12.0.2-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 12'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk12.0.2-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.12.0.2'

end
