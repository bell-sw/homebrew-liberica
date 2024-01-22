cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.2,14'

	if Hardware::CPU.intel?
		sha256 '75f9b44677ab39746941bac55c47a0e2f21e66bf6c55e41798dd3b9ff7f40f1b'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jre21.0.2%2B14-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.2+14-macos-amd64-full.pkg'
	else
		sha256 '11d734c618c667ce6667fc704fdf4e642f83a0f86ceffaa4c3d234e6a91b5fa2'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jre21.0.2%2B14-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.2+14-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

