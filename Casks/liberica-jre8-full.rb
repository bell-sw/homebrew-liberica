cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,342'

	if Hardware::CPU.intel?
		sha256 'f9bf601c78e46148c81bbbe348b235305e687302cb174f576401c160cf14e0b8'

		url "https://download.bell-sw.com/java/8u342%2B7/bellsoft-jre8u342%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u342+7-macos-amd64-full.pkg'
	else
		sha256 '6f7137ae4ea4c24703544b3cbbfc902aac4ea79e5aee9b28c2478bd44fcaa2d3'

		url "https://download.bell-sw.com/java/8u342%2B7/bellsoft-jre8u342%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u342+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

