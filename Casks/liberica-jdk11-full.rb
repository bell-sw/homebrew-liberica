cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.32,11'

	if Hardware::CPU.intel?
		sha256 '243a925b549b82bc1f17b7018c640316afba090f4f6d33b3b6be187e94189a7c'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jdk11.0.32%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.32+11-macos-amd64-full.pkg'
	else
		sha256 '846da5b6cc4e4ec825f939a0ba7641f732cbfb3485432b04e2d060fb93ec3eed'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jdk11.0.32%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.32+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

