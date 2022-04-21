cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.3,7'

	if Hardware::CPU.intel?
		sha256 '7a71b6ae7129aca7cea00a93fef51ce6a55f85067b4a8283da9a6f9cd7a5205a'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jre17.0.3%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.3+7-macos-amd64-full.pkg'
	else
		sha256 '8c6d8a193b4f75f50ca5f6163ccc5a1db08325324b1cf332130ae46921b85bc0'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jre17.0.3%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.3+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

