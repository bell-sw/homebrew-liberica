cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,352'

	if Hardware::CPU.intel?
		sha256 '5a2972e97e7caa42e20593db85147ec79dab3c0c60fec40917b26db8c5945faa'

		url "https://download.bell-sw.com/java/8u352%2B8/bellsoft-jre8u352%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u352+8-macos-amd64.pkg'
	else
		sha256 'a9b64900aa623590c0d245b99b8a86cf9d1ea8fcc06b1ec93d7bd6d70a8e5b65'

		url "https://download.bell-sw.com/java/8u352%2B8/bellsoft-jre8u352%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u352+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

