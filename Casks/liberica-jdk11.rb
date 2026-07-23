cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.32,11'

	if Hardware::CPU.intel?
		sha256 '1cca8e1c7d2ce477bf5fa7657c709c73ea57da1acc6b616745a73497cbcdff85'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jdk11.0.32%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.32+11-macos-amd64.pkg'
	else
		sha256 '435a1e4284da1859d376cc673fc4bac25ee5b6d46325fd34d4ee1ba7ce613e9c'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jdk11.0.32%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.32+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

