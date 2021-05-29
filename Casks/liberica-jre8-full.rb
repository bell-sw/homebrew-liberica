cask 'liberica-jre8-full' do
  desc "100% open-source Java implementation"
  version '1.8.0,292'

  if Hardware::CPU.intel?
    sha256 'f6294b1195ca1347c05651d75b5ccae3f819604f51ec8c192892998b0f7d05c1'

    url "https://download.bell-sw.com/java/8u292%2B10/bellsoft-jre8u292%2B10-macos-amd64-full.pkg"
    pkg 'bellsoft-jre8u292+10-macos-amd64-full.pkg'
  else
    sha256 'd0906887bae9dfa12803e3ec3e8e78cf88ed9776f22a1f8cad4a825be7496ea0'

    url "https://download.bell-sw.com/java/8u292%2B11/bellsoft-jre8u292%2B11-macos-aarch64-full.pkg"
    pkg 'bellsoft-jre8u292+11-macos-aarch64-full.pkg'
  end

  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

