cask 'liberica-jdk27-lite' do
	desc "100% open-source Java implementation"
	version '27.0.1.0.3,5'

	if Hardware::CPU.intel?
		sha256 '4bd1e95ebee9a9a4c8c0be85ec5f38deeea2067d11514d9b88724536a9b19efc'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jdk27.0.1.0.3%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk27.0.1.0.3+5-macos-amd64-lite.pkg'
	else
		sha256 'd59e7e70c2587799df284a8922c769390e230946074e22373178bc03a831ad32'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jdk27.0.1.0.3%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk27.0.1.0.3+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27-lite'

end

