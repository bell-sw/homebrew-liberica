cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.16.1,1'

	if Hardware::CPU.intel?
		sha256 '28c5d8d66bc93d32160a0c8be603d3231f0065c2bf2d627b632526cf1622fcf8'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.16.1+1-macos-amd64-full.pkg'
	else
		sha256 '380cfa02b578026838eba0797aaab86da721883f842cd2a3cea4cc3a67d85bf3'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.16.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

