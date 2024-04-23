cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.11,10'

	if Hardware::CPU.intel?
		sha256 '4ca6f389054073629aac22976b89d9955f212164dfa0ac59567dd440d9f7ebbd'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jre17.0.11%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.11+10-macos-amd64.pkg'
	else
		sha256 'f98a15b1ec5b7d6735f22bbd17fc3a9d3fc0b1d40e5269aecece7b0d0d833878'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jre17.0.11%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.11+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

