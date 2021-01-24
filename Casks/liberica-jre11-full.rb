cask 'liberica-jre11-full' do
  desc "100% open-source Java implementation"
  version '11.0.10,9'
  sha256 'e21eebbcdbf3e5eea6f27c12511b18a2cafca74bd2966657429e8378d4ba5f47'

  url "https://download.bell-sw.com/java/11.0.10%2B9/bellsoft-jre11.0.10%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.10+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

