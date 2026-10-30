cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.21.0.3,5'

	if Hardware::CPU.intel?
		sha256 '320b2d46833c331d8769f7adce659eb5756982a9f5f16437fe1edeef7ec589cc'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jdk17.0.21.0.3%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.21.0.3+5-macos-amd64.pkg'
	else
		sha256 'e23ba1c4d2193a6531bbc0591d2a58e2e4f8728b6a0b7335e914e93c82d8ebd3'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jdk17.0.21.0.3%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.21.0.3+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

