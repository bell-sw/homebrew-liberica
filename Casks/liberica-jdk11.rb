cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.18,10'

	if Hardware::CPU.intel?
		sha256 'f2ed02c5bbb22d715f27c6e8b0b3525fff6ce226fe2ed4f5268eee835ef986f1'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.18+10-macos-amd64.pkg'
	else
		sha256 '54ca9bf2a593ddf598a6e3feaca4931a4dbbec13ee09a5bddda9d5a45ccfaf88'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.18+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

