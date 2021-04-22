cask 'liberica-jdk16' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 '9b95fa628c57e184eb6dff3c7cec3f0f9ad4eb331cba98229a8cc4c146f2a786'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-macos-amd64.pkg"
    pkg 'bellsoft-jdk16.0.1+9-macos-amd64.pkg'
  else
    sha256 '2206337dba3d7c77cad566ada1025152bba602de499850ed8512275b6d40e5a6'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-macos-aarch64.pkg"
    pkg 'bellsoft-jdk16.0.1+9-macos-aarch64.pkg'
  end

  name 'BellSoft Liberica JDK 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk16'

end

