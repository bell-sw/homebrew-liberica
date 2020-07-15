cask 'liberica-jre11' do
  version '11.0.8,10'
  sha256 '3c544d075f3090eb0696aaacb4bc90abe04b54f0266bd5cb638b1a59dfa101a7'

  url "https://download.bell-sw.com/java/11.0.8%2B10/bellsoft-jre11.0.8%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.8+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end
