cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.16,8'

	if Hardware::CPU.intel?
		sha256 'd3ba057008155112366c45226906a36be45a241455aa06a000571202219db2cd'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jre11.0.16%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.16+8-macos-amd64.pkg'
	else
		sha256 'd19a08361104fd7433dbcbab54bfc3313dd2a3a131a614d519b7fd78b44c081f'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jre11.0.16%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.16+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

