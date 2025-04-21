cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.15,10'

	if Hardware::CPU.intel?
		sha256 'a37a653dc755908324a236c4ae623fc3fc34810c55d0534541908a685e535f74'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jdk17.0.15%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.15+10-macos-amd64-full.pkg'
	else
		sha256 'a8f781e0238cb0c80b0c6e8f7b06c606c4f5bede695e931108f4cc3fd790fa10'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jdk17.0.15%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.15+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

