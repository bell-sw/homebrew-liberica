cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,452'

	if Hardware::CPU.intel?
		sha256 '469211a81055ae191506c6dbb5e3a5ea5e7f70dedb093170ccc50837dd16124b'

		url "https://download.bell-sw.com/java/8u452%2B11/bellsoft-jdk8u452%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u452+11-macos-amd64-full.pkg'
	else
		sha256 'f3036a679e7d73af7d343263c817fb3ec22ca0b086e1a95ea42e628dcf201196'

		url "https://download.bell-sw.com/java/8u452%2B11/bellsoft-jdk8u452%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u452+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

