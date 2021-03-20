cask 'liberica-jre16' do
  desc "100% open-source Java implementation"
  version '16,36'
  sha256 '5d26566897253ccc54a87949b02fe1ffe003598c1bd5909d6bac697dd5beb2df'

  url "https://download.bell-sw.com/java/16%2B36/bellsoft-jre16%2B36-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 16'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre16+36-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre16'

end

