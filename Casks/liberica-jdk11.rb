cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,2'

	if Hardware::CPU.intel?
		sha256 'fcbee116571f4789a298d415922d6e3ca1870479b889eef6b5f62bf58cbb94c5'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jdk11.0.15.1%2B2-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+2-macos-amd64.pkg'
	else
		sha256 '45de0ac6a7ee1f0847b3bbde7ff9192e734cb510703d2d3b8435b65217b22552'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jdk11.0.15.1%2B2-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+2-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

