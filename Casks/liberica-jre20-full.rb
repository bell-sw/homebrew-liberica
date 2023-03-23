cask 'liberica-jre20-full' do
	desc "100% open-source Java implementation"
	version '20,37'

	if Hardware::CPU.intel?
		sha256 '478998158bd40f7fde17e90e8d0a2b3e08d1a1229c1f26251bc7f8db1f4ae363'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jre20%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre20+37-macos-amd64-full.pkg'
	else
		sha256 '705a235b416a20b5d680f9def4dde28ed900eb364a6b9030d1b9a083d5a0c34e'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jre20%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre20+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre20-full'

end

