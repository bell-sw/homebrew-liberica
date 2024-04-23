cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.11,10'

	if Hardware::CPU.intel?
		sha256 '87ee0078792eebb4e49e874c208961d452653ff6c0f1412222b9a0a0c91abb89'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jre17.0.11%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.11+10-macos-amd64-full.pkg'
	else
		sha256 '635f7005930cc939df92e16dce738ce75925c40c5795f67af85404b023f7ee56'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jre17.0.11%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.11+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

