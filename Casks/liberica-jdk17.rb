cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.11,10'

	if Hardware::CPU.intel?
		sha256 'a7e313a8e5a6266ccad9af2059808a75f3fb1ac62d6b8856e819a6c7af9aa630'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jdk17.0.11%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.11+10-macos-amd64.pkg'
	else
		sha256 '35d6c44181c0c6c066d522fcc3a708fc3d6ee59ba3c486804fa23673bad99f8b'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jdk17.0.11%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.11+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

