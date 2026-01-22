cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.30,9'

	if Hardware::CPU.intel?
		sha256 'ef0fa038b48b088e6248b41ec5b354a1426e7353b81a2d47a17fad10e27cc77e'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jdk11.0.30%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.30+9-macos-amd64.pkg'
	else
		sha256 '3f7392b5d47c66ec67b05f3af7c7abadb8ec0018dbfa78cf6981679b9124ffcc'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jdk11.0.30%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.30+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

