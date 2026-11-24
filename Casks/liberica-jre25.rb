cask 'liberica-jre25' do
	desc "100% open-source Java implementation"
	version '25.0.5.1,5'

	if Hardware::CPU.intel?
		sha256 'e2f5140ea2f80a42d925cae8a2969596366ae57f9688794ee0af91c10acde238'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jre25.0.5.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre25.0.5.1+5-macos-amd64.pkg'
	else
		sha256 '1bc2a623a0fbd3cb8f90db4869b9b06a306cce5c9c72d632dfbf47960e5d7642'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jre25.0.5.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre25.0.5.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25'

end

