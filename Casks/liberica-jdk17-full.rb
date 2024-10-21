cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.13,12'

	if Hardware::CPU.intel?
		sha256 'fa06521cdde15edc8f987850cf8fe175d3d514da239f33ca5032e7301643dbb2'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jdk17.0.13%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.13+12-macos-amd64-full.pkg'
	else
		sha256 'e7a2693fbbae3821db68ade989f95cfbbee4affdacbce28df2f6aefa944e82f5'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jdk17.0.13%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.13+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

