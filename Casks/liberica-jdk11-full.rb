cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.27,9'

	if Hardware::CPU.intel?
		sha256 'b10eb5506ccb0f8d2a7a5574f588eb2fc9c93e362a9c4c3792aa56ff7a60a284'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jdk11.0.27%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.27+9-macos-amd64-full.pkg'
	else
		sha256 'd4e233f7e606775cbfcabbb673d84af4debd0e0586079c56464b1bfd3b482e8a'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jdk11.0.27%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.27+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

