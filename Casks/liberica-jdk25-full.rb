cask 'liberica-jdk25-full' do
	desc "100% open-source Java implementation"
	version '25,37'

	if Hardware::CPU.intel?
		sha256 '8b89d186091cd17942290c6496a51a6d8f4c38b1bc70c8cb74fe8c7b3979214f'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jdk25%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk25+37-macos-amd64-full.pkg'
	else
		sha256 '6bff36e704c5b2361dc8c4a4bb5c9051b0b4d7e1bf3c44fb0194f2a1c21691e3'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jdk25%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk25+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-full'

end

