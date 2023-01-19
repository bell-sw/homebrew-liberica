cask 'liberica-jdk19' do
	desc "100% open-source Java implementation"
	version '19.0.2,9'

	if Hardware::CPU.intel?
		sha256 '8d31ecd0bfc63e874c96d5aff367fe30892087d3c3856da68382215c02f35a5e'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk19.0.2+9-macos-amd64.pkg'
	else
		sha256 'c60d15ac94fd74b3d787f6b53de2128cbd6b05f95e835a18075ee52b32660faa'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk19.0.2+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19'

end

