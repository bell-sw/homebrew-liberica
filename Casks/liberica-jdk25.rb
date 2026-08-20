cask 'liberica-jdk25' do
	desc "100% open-source Java implementation"
	version '25.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 '64f9b9b80609106aa71cc6656635b2939596e32b0afa0391e4c2f18554c82abc'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk25.0.4.1+1-macos-amd64.pkg'
	else
		sha256 'c12e8a3d112d714e92a83ef82f1e378be176f3d66e9b5cc6135c5ff09fc66ce9'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk25.0.4.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25'

end

