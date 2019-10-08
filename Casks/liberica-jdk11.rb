cask 'liberica-jdk11' do
  version '11.0.4,10'
  sha256 '5450d6f929bdc700222bd8866b96abe3defd39c8babd084e6f59202818386ff0'

  url "https://download.bell-sw.com/java/11.0.4/bellsoft-jdk11.0.4-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.4-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.11.0.4'

end
