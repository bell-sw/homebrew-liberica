cask 'liberica-jre11-full' do
  desc "100% open-source Java implementation"
  version '11.0.11,9'

  if Hardware::CPU.intel?
    sha256 '37c47ea8540ccd1137e98130f92044472293445c5ef881df8457217051913381'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jre11.0.11%2B9-macos-amd64-full.pkg"
    pkg 'bellsoft-jre11.0.11+9-macos-amd64-full.pkg'
  else
    sha256 'c246c0511a60aeb485d16762d8c396164356e77587390df11b1e51bd6415dd2e'

    url "https://download.bell-sw.com/java/11.0.11%2B9/bellsoft-jre11.0.11%2B9-macos-aarch64-full.pkg"
    pkg 'bellsoft-jre11.0.11+9-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

