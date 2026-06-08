cask 'liberica-jdk26-full' do
	desc "100% open-source Java implementation"
	version '26.0.1,10'

	if Hardware::CPU.intel?
		sha256 '26143beb260a7ce8e4c9381ed6286aaf549866608d80e2530edd914f3f0f7f26'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jdk26.0.1%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk26.0.1+10-macos-amd64-full.pkg'
	else
		sha256 '69b4027f76e788bafe1a9e45a65e11d11115d2d61ae601429f38a7747522d8fa'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jdk26.0.1%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk26.0.1+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26-full'

end

