cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,514'

	if Hardware::CPU.intel?
		sha256 '624acc9cd4e7d0e963e7deb5b4d644cf56a2f16f05e9ae9d40d50d210531e3cf'

		url "https://download.bell-sw.com/java/8u514%2B5/bellsoft-jdk8u514%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u514+5-macos-amd64.pkg'
	else
		sha256 '3c0837f0e10543d825fd7ef0f76ed47c13c1d639e1d2208a8696fdbe7c5e6cf7'

		url "https://download.bell-sw.com/java/8u514%2B5/bellsoft-jdk8u514%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u514+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

