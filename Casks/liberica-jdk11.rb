cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.18,10'

	if Hardware::CPU.intel?
		sha256 'f2ed02c5bbb22d715f27c6e8b0b3525fff6ce226fe2ed4f5268eee835ef986f1'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.18+10-macos-amd64.pkg'
	else
		sha256 '813ef2899a1be36f29dceea5901eb9a6246c16b1010518fc67d1a4e5c5682ef3'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.18+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

