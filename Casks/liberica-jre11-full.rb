cask 'liberica-jre11-full' do
  desc "100% open-source Java implementation"
  version '11.0.9.1,1'
  sha256 '79e26a2da6ca922d55506ba570b14263359c80f842f52ebee93b75addd55e230'

  url "https://download.bell-sw.com/java/11.0.9.1%2B1/bellsoft-jre11.0.9.1%2B1-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.9.1+1-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

