cask 'liberica-jdk20-lite' do
	desc "100% open-source Java implementation"
	version '20.0.1,10'

	if Hardware::CPU.intel?
		sha256 '066812c801011571b4779a1c3aa0df1246ba9f25a0ebf310b0e9ab907072914f'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk20.0.1+10-macos-amd64-lite.pkg'
	else
		sha256 'afbbbdaccdd11d2f8a2bab7f5f6ba6c34097c35eefad44c918408a0ad0d6c6ec'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk20.0.1+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20-lite'

end

