cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.17,7'

	if Hardware::CPU.intel?
		sha256 'a6c12be45560d92d81756c98991636314d12492ffc38505d2b45ea0cf41211a6'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jre11.0.17%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.17+7-macos-amd64.pkg'
	else
		sha256 '6a61c2a563dea473bb26230c2bb5e27cc9b78621557bef7cb5e6f6e97710f80e'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jre11.0.17%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.17+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

