cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.16.1,1'

	if Hardware::CPU.intel?
		sha256 'a69a8f8d6b5782eb71434bde53b8e8d03ce81fe8ffebd331664e86a7cc956c25'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jre11.0.16.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.16.1+1-macos-amd64.pkg'
	else
		sha256 '1eb6215656e66f7aa39f9481a26206bf0cc2024e883f76ef069d66af9be6315e'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jre11.0.16.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.16.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

