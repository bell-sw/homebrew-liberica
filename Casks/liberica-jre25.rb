cask 'liberica-jre25' do
	desc "100% open-source Java implementation"
	version '25.0.5.0.3,5'

	if Hardware::CPU.intel?
		sha256 '6eb65b7bf9cfa3b0f180ada7aaab6fb262b03ca20386584f5f9bd74002025eb2'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jre25.0.5.0.3%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre25.0.5.0.3+5-macos-amd64.pkg'
	else
		sha256 '7b4f306847763c2113b2920ce6f0888f41564094599938dd69ea9f8a30d26110'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jre25.0.5.0.3%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre25.0.5.0.3+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25'

end

