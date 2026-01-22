cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.18,10'

	if Hardware::CPU.intel?
		sha256 '129e57edc1c9a594d895e34988b76d862d5c3c480af95cc94c968f0c3314502c'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jdk17.0.18%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.18+10-macos-amd64-full.pkg'
	else
		sha256 'be7b8b5935f3d451309b4810ce49009c140b374b4b3443045a9ab901c539b9b7'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jdk17.0.18%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.18+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

