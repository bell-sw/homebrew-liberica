cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.2,14'

	if Hardware::CPU.intel?
		sha256 'f184158dde5d3b70fd5079d393bd7d72217a561318f8115c5a5183ea6b83a8bf'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jdk21.0.2%2B14-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.2+14-macos-amd64.pkg'
	else
		sha256 '6932f0cf6babaf5083c6a41b9e21dc70112588db849e1a8ed22dce70c2d28e1a'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jdk21.0.2%2B14-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.2+14-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

