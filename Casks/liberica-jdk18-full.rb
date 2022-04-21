cask 'liberica-jdk18-full' do
	desc "100% open-source Java implementation"
	version '18.0.1,12'

	if Hardware::CPU.intel?
		sha256 '682d4bf1ca210aff759d793e93ad6a9a2048f38fadc9842bcce1ae67fc59d161'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk18.0.1+12-macos-amd64-full.pkg'
	else
		sha256 '0c61844561daa6c6e2d42ca77bbfc17ac17dc893a8e93d8836c9f86f86aab0ca'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk18.0.1+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-full'

end

