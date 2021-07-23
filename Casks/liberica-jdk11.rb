cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.12,7'

	if Hardware::CPU.intel?
		sha256 '239310c23554ac8a9562b3900bedefa082813054d6cb065f7e4b04ae5cd9c60e'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jdk11.0.12%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.12+7-macos-amd64.pkg'
	else
		sha256 '0b15b720036b67efad72bef67fdffdbb9f2e34f09d809de01475cdd1df636ea8'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jdk11.0.12%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.12+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

