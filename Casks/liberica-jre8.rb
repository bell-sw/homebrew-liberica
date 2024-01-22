cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,402'

	if Hardware::CPU.intel?
		sha256 '529e1ff4ed4a83a5fb5bb1f97d90a2d415c3b0eb5f52959c08636cf245a9d3d1'

		url "https://download.bell-sw.com/java/8u402%2B7/bellsoft-jre8u402%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u402+7-macos-amd64.pkg'
	else
		sha256 'e4eb27a225f59927008463d663cb85f65edba8038730e929ba8749b5d9ba38ff'

		url "https://download.bell-sw.com/java/8u402%2B7/bellsoft-jre8u402%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u402+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

