cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.12,10'

	if Hardware::CPU.intel?
		sha256 '69599329d0f8ab681cc3b17cc3c03ac8fa5259e62a7310d88deb1a045698c67b'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jdk21.0.12%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.12+10-macos-amd64-full.pkg'
	else
		sha256 'dab3a5dd773ef8ff761e70dd34d4e1cafc139d4ee1797bd9a8d041ce54a67e69'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jdk21.0.12%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.12+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

