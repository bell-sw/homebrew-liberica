cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.5,11'

	if Hardware::CPU.intel?
		sha256 'bb1c40f996c5d05095078c9e31362a39acc16bcbe0a33f34dfbf1231562688d2'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jdk21.0.5%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.5+11-macos-amd64.pkg'
	else
		sha256 '6baa46561d80d3bb8c6bc69ba5f26327a429d4e3dbe31722c916ba0691c43dcc'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jdk21.0.5%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.5+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

