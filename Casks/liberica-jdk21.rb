cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.13.0.3,5'

	if Hardware::CPU.intel?
		sha256 'da7c4ee08017c5c0b08071f461dee18ba96d3196e284284191f8aecd1ed23980'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jdk21.0.13.0.3%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.13.0.3+5-macos-amd64.pkg'
	else
		sha256 '1285092f9f80a7619289b8e56807e5283fb5dd2a2f007db1591b543a4c6dd9e6'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jdk21.0.13.0.3%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.13.0.3+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

