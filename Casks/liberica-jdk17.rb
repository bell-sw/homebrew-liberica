cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.20.1,1'

	if Hardware::CPU.intel?
		sha256 'b75cf43725f8fe37af2d1500e17240995ed0b497e6824a1ea1eb5579fad42132'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jdk17.0.20.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.20.1+1-macos-amd64.pkg'
	else
		sha256 '6193dfadf9a6fac1cbeed644989736e42900fb33a25499929a0230e8cc35c9a1'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jdk17.0.20.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.20.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

