cask 'liberica-jdk16-full' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 'e8dbace71051e03c183baedcd0308941b64f460f46bffc831e83098402c20779'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-macos-amd64-full.pkg"
    pkg 'bellsoft-jdk16.0.1+9-macos-amd64-full.pkg'
  else
    sha256 '18400527cd9e31b0b6a3548422f931a934876b3080b9de332cd4f2e4e903acc1'

    url "https://download.bell-sw.com/java/16.0.1%2B10/bellsoft-jdk16.0.1%2B10-macos-aarch64-full.pkg"
    pkg 'bellsoft-jdk16.0.1+10-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JDK 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk16-full'

end

