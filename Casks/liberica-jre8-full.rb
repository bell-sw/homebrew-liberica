cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,333'

	if Hardware::CPU.intel?
		sha256 '0284b509583229cbe7035804cf3a752ae07ab81cdf240c80ca105c830c17d429'

		url "https://download.bell-sw.com/java/8u333%2B2/bellsoft-jre8u333%2B2-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u333+2-macos-amd64-full.pkg'
	else
		sha256 '83bad8db7ad0c24139e0774fd4edb87816dcd23b48a47b6a0cf6866af828206d'

		url "https://download.bell-sw.com/java/8u333%2B2/bellsoft-jre8u333%2B2-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u333+2-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

