cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.20.1,1'

	if Hardware::CPU.intel?
		sha256 '983d83b9144c2d47e4db67c1623252bad7c04ba288bed229772bea736a5b1ed6'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jre17.0.20.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.20.1+1-macos-amd64-full.pkg'
	else
		sha256 'be8a364aec2fe85d13ea3589f7bc50cade460917e470bc942bee9b0dbb311e4a'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jre17.0.20.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.20.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

