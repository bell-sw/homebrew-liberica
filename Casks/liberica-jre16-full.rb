cask 'liberica-jre16-full' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 '90fcd04271edd142e342dc4aa988b76f13c87ad51ef8e16e49bcbf25d37e8bab'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jre16.0.1%2B9-macos-amd64-full.pkg"
    pkg 'bellsoft-jre16.0.1+9-macos-amd64-full.pkg'
  else
    sha256 'b28c85703c16a25d6dec7a9962c524f8cf63cf90b33e0eb6cb2c81a3e4164e5d'

    url "https://download.bell-sw.com/java/16.0.1%2B10/bellsoft-jre16.0.1%2B10-macos-aarch64-full.pkg"
    pkg 'bellsoft-jre16.0.1+10-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JRE 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jre16-full'

end

