cask 'liberica-jre18-full' do
	desc "100% open-source Java implementation"
	version '18.0.1,12'

	if Hardware::CPU.intel?
		sha256 'b4af99a09b2829e988e873a44dd8bca51f3199e50e1e98b934591ff06f9c708b'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jre18.0.1%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre18.0.1+12-macos-amd64-full.pkg'
	else
		sha256 'c343c388cdc84dd9fb8813886922389dda209fd1fc5220179d0f0556cae4aa26'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jre18.0.1%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre18.0.1+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18-full'

end

