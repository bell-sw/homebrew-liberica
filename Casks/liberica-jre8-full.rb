cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,462'

	if Hardware::CPU.intel?
		sha256 '47f55905b1c6b0f5b30d71ddc6563705652135ac79d444d6cbd601bf52348138'

		url "https://download.bell-sw.com/java/8u462%2B11/bellsoft-jre8u462%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u462+11-macos-amd64-full.pkg'
	else
		sha256 'a07a1da8f5b038150e9a0e65c2128e307628068372351fa4745bd55f5e4012b2'

		url "https://download.bell-sw.com/java/8u462%2B11/bellsoft-jre8u462%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u462+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

