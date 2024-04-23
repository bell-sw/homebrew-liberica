cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,412'

	if Hardware::CPU.intel?
		sha256 '290882007f0a37f45cc2b67f303d4787c0130e1ca4c53d5730fcb05101d52028'

		url "https://download.bell-sw.com/java/8u412%2B9/bellsoft-jre8u412%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u412+9-macos-amd64-full.pkg'
	else
		sha256 '8e0be1a6e86759f15340556c48b5fb8d986ffe47ca521a53898e82a95d858820'

		url "https://download.bell-sw.com/java/8u412%2B9/bellsoft-jre8u412%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u412+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

