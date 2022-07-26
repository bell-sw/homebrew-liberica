cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,342'

	if Hardware::CPU.intel?
		sha256 '5251e454ba6befe131e5329983403fc751c914556efc64a0af64258c047688c4'

		url "https://download.bell-sw.com/java/8u342%2B7/bellsoft-jre8u342%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u342+7-macos-amd64.pkg'
	else
		sha256 '4d21663d23725244e893701121e3921c626ff08638b548c35704be5257c56fba'

		url "https://download.bell-sw.com/java/8u342%2B7/bellsoft-jre8u342%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u342+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

