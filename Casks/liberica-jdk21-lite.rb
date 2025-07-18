cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.8,12'

	if Hardware::CPU.intel?
		sha256 '578c21573273c675be8d752a9f9db2b0f7b35d147e88992d4d69deca3ac5729c'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jdk21.0.8%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.8+12-macos-amd64-lite.pkg'
	else
		sha256 '2e1e3dc15da955b1c58d0161191886a626b98b3d050bd4d85fc26a2323336f93'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jdk21.0.8%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.8+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

