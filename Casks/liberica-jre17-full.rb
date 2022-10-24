cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.5,8'

	if Hardware::CPU.intel?
		sha256 '4741b88c7b065d8866cf9b7419126567462e5f7e1c90c81bfec79e2457179091'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jre17.0.5%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.5+8-macos-amd64-full.pkg'
	else
		sha256 '3eff1c0f07e5d43c23819a83c942b50790ecd09671917b5515d7c93d0a89c1ae'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jre17.0.5%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.5+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

