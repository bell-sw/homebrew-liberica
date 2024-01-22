cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,402'

	if Hardware::CPU.intel?
		sha256 '7e7b1c684fa652cd76694a62444ac6f9b02580edfe6cd4d5aa2dbd42929135a4'

		url "https://download.bell-sw.com/java/8u402%2B7/bellsoft-jre8u402%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u402+7-macos-amd64-full.pkg'
	else
		sha256 'f351de541048ab7c6b1d47ae8c18fee4b9233d39e8f06c0d96f8b4814382c1aa'

		url "https://download.bell-sw.com/java/8u402%2B7/bellsoft-jre8u402%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u402+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

