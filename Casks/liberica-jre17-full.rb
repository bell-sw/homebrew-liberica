cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.9,11'

	if Hardware::CPU.intel?
		sha256 '0b921e9806f8307a32167def04d57d7a1704c517c599074653b0bb7b056d5a14'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jre17.0.9%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.9+11-macos-amd64-full.pkg'
	else
		sha256 'fcf09183c345efa989033c73d228c8672055444472a9ef15f28ab75e4971800b'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jre17.0.9%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.9+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

