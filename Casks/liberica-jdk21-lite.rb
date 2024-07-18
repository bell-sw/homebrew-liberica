cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.4,9'

	if Hardware::CPU.intel?
		sha256 'a2bd570739e167ac83254654a9b55dcb4d32a1c2843c533d9e245845505f97a2'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jdk21.0.4%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.4+9-macos-amd64-lite.pkg'
	else
		sha256 '51ca6eb445116d93878e7048e6191d96082d3035ad6ce8a579a572b5cbaf0fa2'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jdk21.0.4%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.4+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

