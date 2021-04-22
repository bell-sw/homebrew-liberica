cask 'liberica-jre16-full' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 '90fcd04271edd142e342dc4aa988b76f13c87ad51ef8e16e49bcbf25d37e8bab'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jre16.0.1%2B9-macos-amd64-full.pkg"
    pkg 'bellsoft-jre16.0.1+9-macos-amd64-full.pkg'
  else
    sha256 '96a0d12f84b42a94e7df2a857383d444fc0caa19c7b3216dfa95f6507903eb17'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jre16.0.1%2B9-macos-aarch64-full.pkg"
    pkg 'bellsoft-jre16.0.1+9-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JRE 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jre16-full'

end

