cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.4,8'

	if Hardware::CPU.intel?
		sha256 '59bd6148544a7fdd963d2b7623eb8ce8ea614684902dec84f50b3757cbc55bae'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.4+8-macos-amd64.pkg'
	else
		sha256 'd87b2b303ace7124024f35fb2de7175ed0c909cde2f932dce01bbedb805952b7'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.4+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

