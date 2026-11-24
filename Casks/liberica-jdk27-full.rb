cask 'liberica-jdk27-full' do
	desc "100% open-source Java implementation"
	version '27.0.1.1,5'

	if Hardware::CPU.intel?
		sha256 '44d02172c1c7dc8407b593544c9a2010155c64aec3621c36ecac021a41638c4c'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jdk27.0.1.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk27.0.1.1+5-macos-amd64-full.pkg'
	else
		sha256 '1299124f2a7947295f4f633a337adcf9cbf71011186710826e488b228c4b9f4b'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jdk27.0.1.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk27.0.1.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27-full'

end

