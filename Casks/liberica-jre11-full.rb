cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.20,8'

	if Hardware::CPU.intel?
		sha256 'da0e66aa59b5363561266896f1d79fca268c67cee4cd23d033652b11c2650f75'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jre11.0.20%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.20+8-macos-amd64-full.pkg'
	else
		sha256 '74be9ce7778916c25c639f6a0e06c160487cf88f44896dfbce54ca955d47cd57'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jre11.0.20%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.20+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

