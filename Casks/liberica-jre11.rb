cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.30,9'

	if Hardware::CPU.intel?
		sha256 'e45ca335c63e5d29e5ac9604b72f95a2353dc1938b64c7254bae25c2798f1558'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jre11.0.30%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.30+9-macos-amd64.pkg'
	else
		sha256 '55cf638e674dca5d636ee403b10e757bd815633c01ccf42e8fd7db77c36379e1'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jre11.0.30%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.30+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

