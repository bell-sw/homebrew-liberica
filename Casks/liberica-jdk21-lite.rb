cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.7,9'

	if Hardware::CPU.intel?
		sha256 'd966d0ffc32c5d7d32f828b3262675b9c4bc2bb1df406bab02fd0db9dcd523c5'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jdk21.0.7%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.7+9-macos-amd64-lite.pkg'
	else
		sha256 '0e7f26c82ad8ea0b92ef1e3c42208097d60a897ddaef8232a9c887e39bc57220'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jdk21.0.7%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.7+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

