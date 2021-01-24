cask 'liberica-jre15' do
  desc "100% open-source Java implementation"
  version '15.0.2,10'
  sha256 'f3ee78f31068d4cd0feee45c168ac12a0d7fb9fb029ea3183e37e0d0011b7160'

  url "https://download.bell-sw.com/java/15.0.2%2B10/bellsoft-jre15.0.2%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre15.0.2+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre15'

end

