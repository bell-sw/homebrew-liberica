cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.13,8'

	if Hardware::CPU.intel?
		sha256 'bc52b6811b0785c19c3490515470ebaee9233e327ffd6e6c613d08aa9467d8af'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jdk11.0.13%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.13+8-macos-amd64.pkg'
	else
		sha256 '2896e285968dc05deaa5eb2432fda65d5764db02ebc71c1f16ea6ab21c4b4bf2'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jdk11.0.13%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.13+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

