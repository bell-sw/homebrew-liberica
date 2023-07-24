cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.8,7'

	if Hardware::CPU.intel?
		sha256 '43eb1517328dfe900c10cc3c36349159d9cff3966c25d330bb3f227bf73252bd'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jre17.0.8%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.8+7-macos-amd64-full.pkg'
	else
		sha256 '6a53d02d3f6e345d9474b14fce1f32cc6b5021793521c4959878573c5281eba2'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jre17.0.8%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.8+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

