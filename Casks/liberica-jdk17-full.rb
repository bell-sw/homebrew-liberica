cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.4,8'

	if Hardware::CPU.intel?
		sha256 'd0a4222e0c6000a8780c72034158176ddb0ef5544aed1ca0f6501a808f2047b6'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.4+8-macos-amd64-full.pkg'
	else
		sha256 '1218fffc8c8b50193583648e15ae95267f65fe7a0fd7556656d8e578af426242'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.4+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

