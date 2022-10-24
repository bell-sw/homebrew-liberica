cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,352'

	if Hardware::CPU.intel?
		sha256 '5db3803324fe6ba05b74d92dec917927d1be03f3eb525afbd6e28629424151d3'

		url "https://download.bell-sw.com/java/8u352%2B8/bellsoft-jre8u352%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u352+8-macos-amd64-full.pkg'
	else
		sha256 '292fc9217e789b190d150707b0f12947658efc55e467eb25e05ddf4241557ecc'

		url "https://download.bell-sw.com/java/8u352%2B8/bellsoft-jre8u352%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u352+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

