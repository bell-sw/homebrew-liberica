cask 'liberica-jre18-full' do
	desc "100% open-source Java implementation"
	version '18.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 'f8af54996158caebb7c876652356d84730caa3f204cc9acf73f0a2ea1651b81b'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jre18.0.2.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre18.0.2.1+1-macos-amd64-full.pkg'
	else
		sha256 '2b3576aa0eea780b4220658f90929609cf029344ca8a46dbaf1621570fb221a6'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jre18.0.2.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre18.0.2.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18-full'

end

