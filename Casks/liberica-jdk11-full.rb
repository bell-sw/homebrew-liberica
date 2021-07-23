cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.12,7'

	if Hardware::CPU.intel?
		sha256 '6b9db09a0db5d55e9f95f137b7b80197ff32c650af8584169b86d91302979728'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jdk11.0.12%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.12+7-macos-amd64-full.pkg'
	else
		sha256 '6f170deaf81706b468af5023029f2729bac2c050776657ba465c500f1b73f265'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jdk11.0.12%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.12+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

