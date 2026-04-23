cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.31,11'

	if Hardware::CPU.intel?
		sha256 '5393be0dd9f59d92d4ce9c45c9428fe285fbb7d46fad3bf32d569e6abb67768c'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jdk11.0.31%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.31+11-macos-amd64.pkg'
	else
		sha256 '1f0ba6aeaf3915ecbb9a56e512f29c47ea71b17744c0b681369307779a68fbcf'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jdk11.0.31%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.31+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

