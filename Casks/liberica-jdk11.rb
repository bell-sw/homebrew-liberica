cask 'liberica-jdk11' do
  desc "100% open-source Java implementation"
  version '11.0.9.1,1'
  sha256 'b8934393fcb96f5d21b51ad36cc54d875f750024e10011d42ac03b64c0794b60'

  url "https://download.bell-sw.com/java/11.0.9.1%2B1/bellsoft-jdk11.0.9.1%2B1-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.9.1+1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

