cask 'liberica-jdk18-lite' do
	desc "100% open-source Java implementation"
	version '18.0.1.1,2'

	if Hardware::CPU.intel?
		sha256 '0c1923c00fd5e309a398242f0336140e4e41ba5f897e524770ac938589615c2c'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jdk18.0.1.1%2B2-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk18.0.1.1+2-macos-amd64-lite.pkg'
	else
		sha256 'c057763691c9bb83ffa52516e8886c0dd4d2fa3f59d237ec96325f4d563fe77b'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jdk18.0.1.1%2B2-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk18.0.1.1+2-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-lite'

end

