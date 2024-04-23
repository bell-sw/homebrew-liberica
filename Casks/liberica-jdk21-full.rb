cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.3,10'

	if Hardware::CPU.intel?
		sha256 'c6fd9ac1d38826e6678b8ce599567699a4264dea82f6475cac69d51edb7c7b70'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jdk21.0.3%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.3+10-macos-amd64-full.pkg'
	else
		sha256 '3be81368489c3329ab7a825278f23368ed1b3a7718c1b22ad38c7ed844f5660f'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jdk21.0.3%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.3+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

