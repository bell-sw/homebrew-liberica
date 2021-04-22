cask 'liberica-jdk16-lite' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 '045b602692cfdcbcd85a3be147afa782e9aa173aaab7cef23453642a3fc61341'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-macos-amd64-lite.pkg"
    pkg 'bellsoft-jdk16.0.1+9-macos-amd64-lite.pkg'
  else
    sha256 'd1e30a41e3a2a8ed7ebed034131a3e5bf31e8c179fcc7e9ffb17aa9284e3d3e0'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-macos-aarch64-lite.pkg"
    pkg 'bellsoft-jdk16.0.1+9-macos-aarch64-lite.pkg'
  end

  name 'BellSoft Liberica JDK 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk16-lite'

end

