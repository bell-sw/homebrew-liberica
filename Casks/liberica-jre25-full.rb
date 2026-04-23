cask 'liberica-jre25-full' do
	desc "100% open-source Java implementation"
	version '25.0.3,11'

	if Hardware::CPU.intel?
		sha256 'c44070b851142954198bc7513f5c411b8d0ee013d8609999c1efaaa542461d00'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jre25.0.3%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre25.0.3+11-macos-amd64-full.pkg'
	else
		sha256 'c431d265a5da83db36946fd115bddb8ac10eac044417d723d0b9698f72fbc8d1'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jre25.0.3%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre25.0.3+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25-full'

end

