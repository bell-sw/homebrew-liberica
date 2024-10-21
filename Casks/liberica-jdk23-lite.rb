cask 'liberica-jdk23-lite' do
	desc "100% open-source Java implementation"
	version '23.0.1,13'

	if Hardware::CPU.intel?
		sha256 '7aa3ba7ce9dcd9a6149f1064f97b5514b0525f482741b216d828e8cc662cf375'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jdk23.0.1%2B13-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk23.0.1+13-macos-amd64-lite.pkg'
	else
		sha256 '3e2fa5ed076b0620c11f0b79a74fb89c2f6b15d0acf06accb01d5368959611cf'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jdk23.0.1%2B13-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk23.0.1+13-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23-lite'

end

