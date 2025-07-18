cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.28,12'

	if Hardware::CPU.intel?
		sha256 '75c92667a5e272b05d83efb676270cfd212be399b53ddd1a2c5cdc60a6a9d1a2'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jre11.0.28%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.28+12-macos-amd64-full.pkg'
	else
		sha256 'c46a30131bb908034a8d8662bfa776732b6423474a44d15115e1672d651acee2'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jre11.0.28%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.28+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

