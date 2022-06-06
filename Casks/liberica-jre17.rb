cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.3.1,2'

	if Hardware::CPU.intel?
		sha256 '79dbf88028397c51497256019765640d0200d33c8d7941eaf1183663170892e0'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jre17.0.3.1%2B2-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.3.1+2-macos-amd64.pkg'
	else
		sha256 'bf5f1e4cfc640b91ce4ef51dcc1d3a199c08e8f7f7d6d1789ee1334a00e726e4'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jre17.0.3.1%2B2-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.3.1+2-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

