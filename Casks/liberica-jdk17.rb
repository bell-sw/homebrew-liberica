cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.13,12'

	if Hardware::CPU.intel?
		sha256 '9056a3975600283937c4acb9729da4378f334d667bd44b3aee330b822cde653e'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jdk17.0.13%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.13+12-macos-amd64.pkg'
	else
		sha256 '7099830b501c381c0ad09c229276e756887a9bae2a887802ec9af795162de8d6'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jdk17.0.13%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.13+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

