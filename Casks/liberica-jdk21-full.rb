cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.11,11'

	if Hardware::CPU.intel?
		sha256 '9e40cb7518d51a47a38d617b1775b38633e14553c455cd9997485573225627b4'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jdk21.0.11%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.11+11-macos-amd64-full.pkg'
	else
		sha256 '1aa43d217b3fa3f013897e1dd89c163d3ac84279e23791255ae449957eb35096'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jdk21.0.11%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.11+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

