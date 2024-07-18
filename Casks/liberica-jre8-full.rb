cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,422'

	if Hardware::CPU.intel?
		sha256 'ec8898cf1869bb845df3c106f83bf969fe0f9671bdf8d7154935e982869eb69e'

		url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jre8u422%2B6-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u422+6-macos-amd64-full.pkg'
	else
		sha256 '68c9454de3d5b23641918c28bcc27825ae99b91df088c080601f92e67655a342'

		url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jre8u422%2B6-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u422+6-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

