cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.17,11'

	if Hardware::CPU.intel?
		sha256 '69770ecb1ad03c35be90eab4aae29febfdbbe8da2abbfe45964f281f30126d47'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jre17.0.17%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.17+11-macos-amd64-full.pkg'
	else
		sha256 '6aaa8a84c7a29c5aee9a46b78896c2a8d6a075ccc314f77782b6db4b65c3857e'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jre17.0.17%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.17+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

