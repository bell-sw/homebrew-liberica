cask 'liberica-jre18' do
	desc "100% open-source Java implementation"
	version '18.0.1.1,2'

	if Hardware::CPU.intel?
		sha256 'ba806fd339cc79c7a2eb6cd79d4b4f7a83b6832f1520b4efcff0524d5c8c6558'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jre18.0.1.1%2B2-macos-amd64.pkg"
  		pkg 'bellsoft-jre18.0.1.1+2-macos-amd64.pkg'
	else
		sha256 'c71ec73e806f06ef75b9bf246fb98411b135e418d655098c2eab974e90612242'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jre18.0.1.1%2B2-macos-aarch64.pkg"
  		pkg 'bellsoft-jre18.0.1.1+2-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18'

end

