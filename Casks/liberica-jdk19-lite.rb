cask 'liberica-jdk19-lite' do
	desc "100% open-source Java implementation"
	version '19.0.2,9'

	if Hardware::CPU.intel?
		sha256 '931a4ee33a0a090716f4053cd314b92b1d2eaa4933dbb6ca11a6df861113cb7e'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk19.0.2+9-macos-amd64-lite.pkg'
	else
		sha256 'b3a24b063a1c77021175661aa7d181f99b84aab1b46dbe168589f1b78f131093'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk19.0.2+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19-lite'

end

