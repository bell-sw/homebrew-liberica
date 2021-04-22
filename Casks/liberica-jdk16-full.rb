cask 'liberica-jdk16-full' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 'e8dbace71051e03c183baedcd0308941b64f460f46bffc831e83098402c20779'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-macos-amd64-full.pkg"
    pkg 'bellsoft-jdk16.0.1+9-macos-amd64-full.pkg'
  else
    sha256 'c54c5001b4bc7aa5f056239de5a2e16c600c3282a089e58b334ebabbc70f5a50'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-macos-aarch64-full.pkg"
    pkg 'bellsoft-jdk16.0.1+9-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JDK 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk16-full'

end

