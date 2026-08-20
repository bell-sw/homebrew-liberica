cask 'liberica-jdk26-full' do
	desc "100% open-source Java implementation"
	version '26.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 'f0e71cf040745af9ec0ef02705ea9a03c87c300611b8f07db66cc757f593907c'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jdk26.0.2.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk26.0.2.1+1-macos-amd64-full.pkg'
	else
		sha256 '392a9b0e1e4e087521634ee5a50a5c654f259f7ea7faaf4ba2db8ebdddf344d2'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jdk26.0.2.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk26.0.2.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26-full'

end

