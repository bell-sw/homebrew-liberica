cask 'liberica-jre26-full' do
	desc "100% open-source Java implementation"
	version '26.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 '50b4ed242c3647f40ada727b3d0f81d9e0f63cedd97cd339291732b728e5d230'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jre26.0.2.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre26.0.2.1+1-macos-amd64-full.pkg'
	else
		sha256 'c296405705bdd59a9a18ae5522e9c9a26eef5e483740bad5ca63505a17d10cb3'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jre26.0.2.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre26.0.2.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre26-full'

end

