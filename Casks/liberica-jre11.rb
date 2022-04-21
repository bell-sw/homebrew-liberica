cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.15,10'

	if Hardware::CPU.intel?
		sha256 '34536b9bfe9099ffd0fd24c2a4cb71813fafbd748bfbd940a3b1ab72919ca933'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jre11.0.15%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.15+10-macos-amd64.pkg'
	else
		sha256 'de39d525d463050db34de4cc58e87b022bf18b942685792fc4f99fd36f1c50f0'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jre11.0.15%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.15+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

