cask 'liberica-jdk25' do
	desc "100% open-source Java implementation"
	version '25.0.1,11'

	if Hardware::CPU.intel?
		sha256 '9bc91fcf0adbe2d59624b2d7bd385221fdaa253b9eef4aa2eb1346a975873620'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jdk25.0.1%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk25.0.1+11-macos-amd64.pkg'
	else
		sha256 '05faf38833a889c7bfe05efc802a1bc6621037645e94c549c390bf36cf9ac467'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jdk25.0.1%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk25.0.1+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25'

end

