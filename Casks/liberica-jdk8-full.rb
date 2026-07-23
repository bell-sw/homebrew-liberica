cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,502'

	if Hardware::CPU.intel?
		sha256 '49c4fa6c009c79d393c2eff2f6fe782f713e6adad60ee44962c70c0c920157ac'

		url "https://download.bell-sw.com/java/8u502%2B9/bellsoft-jdk8u502%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u502+9-macos-amd64-full.pkg'
	else
		sha256 '67f160079f53955e4974217f063e58bdcee0fe7018a1db66b86a9bef206da546'

		url "https://download.bell-sw.com/java/8u502%2B9/bellsoft-jdk8u502%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u502+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

