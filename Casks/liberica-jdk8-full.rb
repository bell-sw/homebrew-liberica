cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,514'

	if Hardware::CPU.intel?
		sha256 '464504545a98ea6a2d2d7bcd03a28a4a98c790d2ce67dfb3156c988a86d48bfb'

		url "https://download.bell-sw.com/java/8u514%2B5/bellsoft-jdk8u514%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u514+5-macos-amd64-full.pkg'
	else
		sha256 'dfc416d82e5d6c2862187651c4ec058d075f0d17b7d22d1cb339182cf5f3f878'

		url "https://download.bell-sw.com/java/8u514%2B5/bellsoft-jdk8u514%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u514+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

