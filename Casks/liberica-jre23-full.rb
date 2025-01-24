cask 'liberica-jre23-full' do
	desc "100% open-source Java implementation"
	version '23.0.2,9'

	if Hardware::CPU.intel?
		sha256 'd0ac8515305234efb8d678f8ce1e155ce6294eaaff7e3098b00f67434d2a1fc4'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jre23.0.2%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre23.0.2+9-macos-amd64-full.pkg'
	else
		sha256 'dc9c9df76ab7e006ab0444da80058dca601fddafb68af3185b481070549aa174'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jre23.0.2%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre23.0.2+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre23-full'

end

