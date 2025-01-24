cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.26,9'

	if Hardware::CPU.intel?
		sha256 '3aa327f38d6b5dbe1c8749510bf8395b6c314d3cfd8b19e4a83caaea6ca29f81'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jdk11.0.26%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.26+9-macos-amd64.pkg'
	else
		sha256 '5ce0467eaa9fe4dbe0fec9deffff1ad882e2318999fb8eb84c7e2d8985f1ea1a'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jdk11.0.26%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.26+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

