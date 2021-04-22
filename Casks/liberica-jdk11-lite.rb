cask 'liberica-jdk11-lite' do
  desc "100% open-source Java implementation"
  version '11.0.11,9'

  if Hardware::CPU.intel?
    sha256 'b52df5ee1f91d9f46b2857b3d1d6c4237cf203b8f3238d4dcc5ea57358a39f30'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jdk11.0.11%2B9-macos-amd64-lite.pkg"
    pkg 'bellsoft-jdk11.0.11+9-macos-amd64-lite.pkg'
  else
    sha256 '5718c4109a1390e6ccac32705e91879b0fb0fef885a10c47fd46991c04b521bc'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jdk11.0.11%2B9-macos-aarch64-lite.pkg"
    pkg 'bellsoft-jdk11.0.11+9-macos-aarch64-lite.pkg'
  end

  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

