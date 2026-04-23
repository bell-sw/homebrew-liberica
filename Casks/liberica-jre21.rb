cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.11,11'

	if Hardware::CPU.intel?
		sha256 '2d7c186d1e54a6f6e7e5aadb01e6f6ae83ceaa8232dde1292cf1b6fb23a37cfb'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jre21.0.11%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.11+11-macos-amd64.pkg'
	else
		sha256 '1ed7c1bdc9761ed3f0b1ce40646e2d37b68fb0930c4c24eeb944e913c4071a8d'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jre21.0.11%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.11+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

