cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.1,12'

	if Hardware::CPU.intel?
		sha256 '3e65faeb5f84c87a1f0dddb7f7000c5c6c8c4b635a6cafa4489848185c513976'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.1+12-macos-amd64-full.pkg'
	else
		sha256 '926ac9014c0781e5b64be448a72347f2ed7cbd429f6d3bc9665f1369131032ec'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.1+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

