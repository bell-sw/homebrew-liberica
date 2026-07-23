cask 'liberica-jre25-full' do
	desc "100% open-source Java implementation"
	version '25.0.4,9'

	if Hardware::CPU.intel?
		sha256 'b98c882fd626fc692ffc755b87a040942d830f32f31977cbcaf46f215c944046'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jre25.0.4%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre25.0.4+9-macos-amd64-full.pkg'
	else
		sha256 'a3fb012b7016900a2dbe2fcf2ea11a39f1cdea54731eb35343e2af39788f305f'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jre25.0.4%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre25.0.4+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25-full'

end

