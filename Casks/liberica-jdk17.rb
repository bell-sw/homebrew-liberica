cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.8,7'

	if Hardware::CPU.intel?
		sha256 '81df563fc2a5749e536f88b8c862a7e576653851b51a250f2f887d741a70932a'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jdk17.0.8%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.8+7-macos-amd64.pkg'
	else
		sha256 '897779d166c58a8153a9c6c55f5b11ac440af11367e66928f64447cba589ffc4'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jdk17.0.8%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.8+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

