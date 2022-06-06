cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.3.1,2'

	if Hardware::CPU.intel?
		sha256 '4e919a2f8cae3134dd469f8b82b776e418ce430eeb79e26f6677a6ffc5b4f90b'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jdk17.0.3.1%2B2-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.3.1+2-macos-amd64-full.pkg'
	else
		sha256 '6cf9a6c512b803284fb9db2534710f6368b91f0b41ce248fbc55a544a950d066'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jdk17.0.3.1%2B2-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.3.1+2-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

