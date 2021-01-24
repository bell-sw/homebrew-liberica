cask 'liberica-jdk15-full' do
  desc "100% open-source Java implementation"
  version '15.0.2,10'
  sha256 '2818eee6c2e7c1fa007f424742b9fe7dcf6efd5042027c7d571992a2757673b5'

  url "https://download.bell-sw.com/java/15.0.2%2B10/bellsoft-jdk15.0.2%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15.0.2+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15-full'

end

