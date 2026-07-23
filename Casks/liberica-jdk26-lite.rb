cask 'liberica-jdk26-lite' do
	desc "100% open-source Java implementation"
	version '26.0.2,13'

	if Hardware::CPU.intel?
		sha256 'f451526d5ff9db703a82331fe553c89479ba1744a8a929e1b6496157214fdd1d'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jdk26.0.2%2B13-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk26.0.2+13-macos-amd64-lite.pkg'
	else
		sha256 'b2ee7a30e05586d0a42bb36274a8f6e34b2837ea38b1468995ec4a9bbd6f78c7'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jdk26.0.2%2B13-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk26.0.2+13-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26-lite'

end

