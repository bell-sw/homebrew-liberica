cask 'liberica-jre8' do
  desc "100% open-source Java implementation"
  version '1.8.0,292'

  if Hardware::CPU.intel?
   sha256 '58003a0eeea8f458989828b39289dab946219d3b72e761134332715673dd7aa8'

   url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jre8u292%2B10-macos-amd64.pkg"
   pkg 'bellsoft-jre8u292+10-macos-amd64.pkg'
  else
   sha256 '9babb18b786492d8b65587187363d70186bce9325b46604fe24e4448bf82c547'

   url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jre8u292%2B10-macos-aarch64.pkg"
   pkg 'bellsoft-jre8u292+10-macos-aarch64.pkg'
  end

  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

