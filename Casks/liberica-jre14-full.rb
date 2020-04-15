cask 'liberica-jre14-full' do
    version '14.0.1,8'
    sha256 'a837db0868305ab7a52a78e0999b0d8669cd152c6b10a6fc5bfe4e820bd0c2e6'
  
    url "https://download.bell-sw.com/java/14.0.1%2B8/bellsoft-jre14.0.1%2B8-macos-amd64-full.pkg"
    name 'BellSoft Liberica JRE 14'
    homepage 'https://bell-sw.com'
  
    pkg 'bellsoft-jre14.0.1+8-macos-amd64-full.pkg'
  
    uninstall pkgutil: 'com.bell-sw.liberica.jre14-full'
  
  end
  