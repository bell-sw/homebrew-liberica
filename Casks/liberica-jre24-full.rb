cask 'liberica-jre24-full' do
	desc "100% open-source Java implementation"
	version '24,37'

	if Hardware::CPU.intel?
		sha256 '7b94747b414c572d0c612a52fd1de73ff4287f3eb1607db6022407b81cfbb7bf'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jre24%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre24+37-macos-amd64-full.pkg'
	else
		sha256 'b54bd8198bd52f1e4d9595f5bec46c58b638867b2a2ef5e81463c8d56649d5de'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jre24%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre24+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre24-full'

end

