cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.18,10'

	if Hardware::CPU.intel?
		sha256 'c2e25a72844dc12d1b3451340e3510eea2c33e431633b6efa22377b39eb240a4'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.18+10-macos-amd64-full.pkg'
	else
		sha256 '2f008b5e530056cdf7ef35b0acbaa2449203afa7268b15b8e81e76d39533ea82'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.18+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

