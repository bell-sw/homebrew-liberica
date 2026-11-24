cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.21.1,5'

	if Hardware::CPU.intel?
		sha256 'ff7a69d80cc20dc61d3986d57ac402ef208214f8d7bdd0ba6b1c2ff19ed3ae1d'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jdk17.0.21.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.21.1+5-macos-amd64.pkg'
	else
		sha256 '4be18d981bae8941653ec3bb8785d5ef35a231b2673342361a2ccf40c3cfc2d5'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jdk17.0.21.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.21.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

