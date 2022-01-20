cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.2,9'

	if Hardware::CPU.intel?
		sha256 'd00fefa0ca285572ced8fbfeb5da9a132ec17bcf5f32754ce42bba74acbb1d03'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jre17.0.2%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.2+9-macos-amd64.pkg'
	else
		sha256 '596f15350641653704ab984d0786f48d5656613584bd09c39f4f17bde8e9f8a2'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jre17.0.2%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.2+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

