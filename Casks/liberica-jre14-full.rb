cask 'liberica-jre14-full' do
    version '14.0.2,13'
    sha256 '59f208550106809fa1e7561f60b97c5664716152fd813aeb751338d6d23dad60'
  
    url "https://download.bell-sw.com/java/14.0.2%2B13/bellsoft-jre14.0.2%2B13-macos-amd64-full.pkg"
    name 'BellSoft Liberica JRE 14'
    homepage 'https://bell-sw.com'
  
    pkg 'bellsoft-jre14.0.2+13-macos-amd64-full.pkg'
  
    uninstall pkgutil: 'com.bell-sw.liberica.jre14-full'
  
  end
  