cask 'liberica-jre19-full' do
	desc "100% open-source Java implementation"
	version '19.0.1,11'

	if Hardware::CPU.intel?
		sha256 'e43b0dff43f5ad0edec2edc2a4df25c945e9b86607f635b4ac95b327edc7b5aa'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jre19.0.1%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre19.0.1+11-macos-amd64-full.pkg'
	else
		sha256 '27c82b7a4b44af1fc103f74b86103749bd3aa398c8a38e3e53f4c758870cc289'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jre19.0.1%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre19.0.1+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre19-full'

end

