cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.19,7'

	if Hardware::CPU.intel?
		sha256 'bfe917e526102a12649f45ca59b364cee829d17c3bef286de500f13b68b50044'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.19+7-macos-amd64-full.pkg'
	else
		sha256 '20e05367e596b5a6f4874dc51417e126d626e5547b450bd293447d3d536fa122'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.19+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

