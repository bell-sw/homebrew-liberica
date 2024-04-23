cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.23,10'

	if Hardware::CPU.intel?
		sha256 'c2d929d46ab22a89785b08adb277e19f438241464a1d02e7322ef6af80b9ca77'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jre11.0.23%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.23+10-macos-amd64.pkg'
	else
		sha256 '1768a0340d5fd973ee50907abe2ec0a7ccadd189ce07cc7261aa9cdc9c2e8b5e'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jre11.0.23%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.23+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

