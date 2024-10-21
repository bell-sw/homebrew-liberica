cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.25,11'

	if Hardware::CPU.intel?
		sha256 '636b1eed4e35d709f4feb25cd1ba6b90609a93e64ee9b31dee40e1200f80f7a3'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jre11.0.25%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.25+11-macos-amd64.pkg'
	else
		sha256 'b3a779e19041e75dbdf8532cff17a2621f2e5c0af9fdb5e483156fe9d7f0ee3f'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jre11.0.25%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.25+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

