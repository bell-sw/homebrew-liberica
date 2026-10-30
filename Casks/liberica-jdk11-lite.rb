cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.33.0.3,7'

	if Hardware::CPU.intel?
		sha256 '2cd40f9229ccff4d3ee3c95e5ab7006f21a3a101171bf45c4d974eefa3d88fba'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jdk11.0.33.0.3%2B7-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.33.0.3+7-macos-amd64-lite.pkg'
	else
		sha256 '3f1064dae099b61a5ba16f7a2a4fe7031132ace484d303d3da8f27faba170a3b'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jdk11.0.33.0.3%2B7-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.33.0.3+7-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

