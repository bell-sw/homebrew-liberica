cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.29,10'

	if Hardware::CPU.intel?
		sha256 'ccf9f146b1c03de9b1b03b6badcdc8423fcadc97028d4398ad6aecad25c02f67'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jre11.0.29%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.29+10-macos-amd64.pkg'
	else
		sha256 '7ac2cbbc81a63d53c25edcf2897e48866b1f57d9830be51ea457674970270f7e'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jre11.0.29%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.29+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

