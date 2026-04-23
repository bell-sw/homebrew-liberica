cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.19,11'

	if Hardware::CPU.intel?
		sha256 '03dea47d719e1ff3ad2c9f06d025a6e711f56fcf8354f7e1b6fb163a5d5adcb3'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jdk17.0.19%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.19+11-macos-amd64-full.pkg'
	else
		sha256 'ba1a9380994eb683156cfc1de298bed12e5e6513f0126858c17f297d6527695b'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jdk17.0.19%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.19+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

