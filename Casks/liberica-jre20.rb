cask 'liberica-jre20' do
	desc "100% open-source Java implementation"
	version '20.0.1,10'

	if Hardware::CPU.intel?
		sha256 '1a01742247bca83fdb602a1437582a0de6ecbb49e6170b3eca8e0783d63fe5bc'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jre20.0.1%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre20.0.1+10-macos-amd64.pkg'
	else
		sha256 '152fad2cb5d73d75f9fb35ea5177050dec9108066ea2b8b6af075c84a55cde63'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jre20.0.1%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre20.0.1+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre20'

end

