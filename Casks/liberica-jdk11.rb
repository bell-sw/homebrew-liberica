cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.23,10'

	if Hardware::CPU.intel?
		sha256 '79b162d0f37ce94b03e3b4f48f450c167f317c16cc983b0086efabd2b07476a8'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jdk11.0.23%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.23+10-macos-amd64.pkg'
	else
		sha256 'c9697350a95605e9b9aca4555b055de681319ec8f055efd85568a31bf0bea1e6'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jdk11.0.23%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.23+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

