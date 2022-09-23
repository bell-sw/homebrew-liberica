cask 'liberica-jre19-full' do
	desc "100% open-source Java implementation"
	version '19,37'

	if Hardware::CPU.intel?
		sha256 'f13fc0a0314f8cbc9821a93af4e6731dc7603d5d1fba90230cea6444c08efdb6'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jre19%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre19+37-macos-amd64-full.pkg'
	else
		sha256 '3f1b44afcbe6a89cb539cb6902ae3fdf0e0294797639cd7f6192447ae97fa0af'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jre19%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre19+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre19-full'

end

