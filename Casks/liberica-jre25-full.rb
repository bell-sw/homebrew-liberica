cask 'liberica-jre25-full' do
	desc "100% open-source Java implementation"
	version '25.0.5.0.3,5'

	if Hardware::CPU.intel?
		sha256 'e15ac3c290e13e2cf599f8abde6deff98caec52d4b3514043e9d093e4839988c'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jre25.0.5.0.3%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre25.0.5.0.3+5-macos-amd64-full.pkg'
	else
		sha256 'ed3c2f2d47178d6d0ea257da3bb913d7bad29b7e21854186b77acf18eb99b960'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jre25.0.5.0.3%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre25.0.5.0.3+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25-full'

end

