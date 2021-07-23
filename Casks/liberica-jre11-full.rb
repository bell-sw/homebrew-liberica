cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.12,7'

	if Hardware::CPU.intel?
		sha256 '90758cdd38bc907b9357931785f1b7c12474603635de72029b6ce80ba4818c18'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jre11.0.12%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.12+7-macos-amd64-full.pkg'
	else
		sha256 '18c952a6991b8574488d892aa6c291bc16b5e8f01a897b2b2b56dd63e7d45aeb'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jre11.0.12%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.12+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

