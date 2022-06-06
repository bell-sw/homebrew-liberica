cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,2'

	if Hardware::CPU.intel?
		sha256 '3885b96d9a9c2347e319ed001577e07666f908a126afd498f5dcdaf58bbf77f5'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jre11.0.15.1%2B2-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.15.1+2-macos-amd64.pkg'
	else
		sha256 'cd33fc740e9e349be4e7369d6e5f21707a9a3ec5e5accc0419271c886880a075'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jre11.0.15.1%2B2-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.15.1+2-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

