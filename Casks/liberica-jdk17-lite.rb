cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.19,11'

	if Hardware::CPU.intel?
		sha256 '18a032b304ceff7dc513676f0d879fc179dc1a11519e5e486d330bc9177b6489'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jdk17.0.19%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.19+11-macos-amd64-lite.pkg'
	else
		sha256 '942c34d8fee26072099601ad649ef56b5ea79128ba337af9a96ac2a5dd991e4e'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jdk17.0.19%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.19+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

