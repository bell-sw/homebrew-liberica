cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,392'

	if Hardware::CPU.intel?
		sha256 '91be9b4a2dc7aaf1e5d9d0a0be42294711869c09a3918d9dcb65d9cec4f7458e'

		url "https://download.bell-sw.com/java/8u392%2B9/bellsoft-jre8u392%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u392+9-macos-amd64.pkg'
	else
		sha256 'e9ec5d5e9c6707075bbf1992f7ed6ff171e6055cc96cd8633cb43a053cd806a8'

		url "https://download.bell-sw.com/java/8u392%2B9/bellsoft-jre8u392%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u392+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

