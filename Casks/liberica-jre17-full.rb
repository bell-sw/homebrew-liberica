cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.16,12'

	if Hardware::CPU.intel?
		sha256 '2a5de9b695c0f87ccca5fdf1d60bb2f95a8b181450084e26898ca463a8a2120c'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jre17.0.16%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.16+12-macos-amd64-full.pkg'
	else
		sha256 '2270a7dcabf601e2147cd82faa6a24e429c6f45dfe06325f31a4a11c8bd33f05'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jre17.0.16%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.16+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

