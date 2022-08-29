cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 'a97a6251ded344bd349aec7b63c1da2dc77b226b5dade91760474df66be23aaa'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.4.1+1-macos-amd64-lite.pkg'
	else
		sha256 '37895550f0433654188708ac4b3a43d138a82092d56e3601c1c81c47f3ff7161'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.4.1+1-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

