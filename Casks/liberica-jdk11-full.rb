cask 'liberica-jdk11-full' do
  desc "100% open-source Java implementation"
  version '11.0.11,9'

  if Hardware::CPU.intel?
    sha256 'f9ac366049760c82d709bd453c7eb5ecd661f70412d8db0c6938aa07c8f26b14'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jdk11.0.11%2B9-macos-amd64-full.pkg"
    pkg 'bellsoft-jdk11.0.11+9-macos-amd64-full.pkg'
  else
    sha256 '2a71a3185e7a82d053a6ca5e5856896afaa457acc57eb439b1a45c73edb608ba'

    url "https://download.bell-sw.com/java/11.0.11%2B10/bellsoft-jdk11.0.11%2B10-macos-aarch64-full.pkg"
    pkg 'bellsoft-jdk11.0.11+10-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

