cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.6,10'

	if Hardware::CPU.intel?
		sha256 'a41611f40a1a6726ea38bf291a0dbccc61335493d96eede7995662fd00e859ae'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.6+10-macos-amd64-full.pkg'
	else
		sha256 'f931444f2d0fee79be7bed473fa64273f8e60c9f391a1e92a7fd4c687fc7f0d2'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.6+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

