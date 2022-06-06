cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.3.1,2'

	if Hardware::CPU.intel?
		sha256 '67867afee2fc658591626e8b577182d8b44f00c6a9a58c2f8d15084b83234491'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jre17.0.3.1%2B2-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.3.1+2-macos-amd64-full.pkg'
	else
		sha256 '0894493aecc92604b6185681d76b7c8d1a7ab4df4611c1c3c08d52b4758d793c'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jre17.0.3.1%2B2-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.3.1+2-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

