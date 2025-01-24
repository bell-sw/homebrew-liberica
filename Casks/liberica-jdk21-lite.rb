cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.6,10'

	if Hardware::CPU.intel?
		sha256 '1e3ab4273ac3d258f98143ea3c1c57bde6660ff967ab26c393e5c833519d4288'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jdk21.0.6%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.6+10-macos-amd64-lite.pkg'
	else
		sha256 '052ebfb2dd4bf0ae6422920f84e8645e7d6ec9a48bf19ab3824713df88f94632'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jdk21.0.6%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.6+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

