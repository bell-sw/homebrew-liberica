cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,502'

	if Hardware::CPU.intel?
		sha256 '0abe327a456d30211ed048ea26e11cb176c4970afbb1596f3f8ccf16cb7ef4f8'

		url "https://download.bell-sw.com/java/8u502%2B9/bellsoft-jre8u502%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u502+9-macos-amd64-full.pkg'
	else
		sha256 '249516448b7835c9953d7d5d32a1475b18928cdfc2c2d6f3903706ed1aac2048'

		url "https://download.bell-sw.com/java/8u502%2B9/bellsoft-jre8u502%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u502+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

