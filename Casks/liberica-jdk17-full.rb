cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.16,12'

	if Hardware::CPU.intel?
		sha256 '6abf0d7568edb04448646148b656668b28eac95668926d8a82e33d1d4ed7ef12'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jdk17.0.16%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.16+12-macos-amd64-full.pkg'
	else
		sha256 'ac04ae93f25c1458d582c38738ca4f0d1005e0618d41a85aaaa20b9678b03fb7'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jdk17.0.16%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.16+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

