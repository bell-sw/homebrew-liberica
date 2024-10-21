cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.13,12'

	if Hardware::CPU.intel?
		sha256 '01fb6784d1d3ab5117a3849ee9d466212dbe66c5f425ba377f7bd52ad3b79073'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jre17.0.13%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.13+12-macos-amd64-full.pkg'
	else
		sha256 '79957dea301c50ccc9c087a48e20f99360659e593cbe6b9107fa613724cbf6d5'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jre17.0.13%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.13+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

