cask 'liberica-jre27' do
	desc "100% open-source Java implementation"
	version '27.0.1.0.3,5'

	if Hardware::CPU.intel?
		sha256 '79c292cc41cf13e73caa1ba1216e1894757aac9012db4317f2d5f9975e9cb7ad'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jre27.0.1.0.3%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre27.0.1.0.3+5-macos-amd64.pkg'
	else
		sha256 'cf4c1c0d0f83e1ca6ccf391b8cd237d6483f6e3cc06026519e53920368624e61'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jre27.0.1.0.3%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre27.0.1.0.3+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre27'

end

