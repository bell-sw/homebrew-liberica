cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,372'

	if Hardware::CPU.intel?
		sha256 'e9081e3ba53a149df843ea74466437eb12b60d2db7de43b6aee0c73286d9f3f3'

		url "https://download.bell-sw.com/java/8u372%2B7/bellsoft-jre8u372%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u372+7-macos-amd64-full.pkg'
	else
		sha256 'a659b12d0fc8db737d68fdaf223aabb11ca97b18dc95ac8305ff8279fe6497a7'

		url "https://download.bell-sw.com/java/8u372%2B7/bellsoft-jre8u372%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u372+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

