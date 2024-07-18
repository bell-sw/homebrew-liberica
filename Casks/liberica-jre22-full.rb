cask 'liberica-jre22-full' do
	desc "100% open-source Java implementation"
	version '22.0.2,11'

	if Hardware::CPU.intel?
		sha256 'ae45e3be0f867cd16f8c4961b84e6b3a8bb8738e0134be15b85059593eeab7be'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jre22.0.2%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre22.0.2+11-macos-amd64-full.pkg'
	else
		sha256 'cef4a07d5cbdf063cd8ba96edf730fb43d6106ef56e32d1bf967578911fe1624'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jre22.0.2%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre22.0.2+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre22-full'

end

