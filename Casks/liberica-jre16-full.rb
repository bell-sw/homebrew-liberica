cask 'liberica-jre16-full' do
  desc "100% open-source Java implementation"
  version '16,36'
  sha256 '7e1a825c727275ffe196ddb69b3cc01916c61fc801a83029afdf1373c16218c4'

  url "https://download.bell-sw.com/java/16%2B36/bellsoft-jre16%2B36-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 16'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre16+36-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre16-full'

end

