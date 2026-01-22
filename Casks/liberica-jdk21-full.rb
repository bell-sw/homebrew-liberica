cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.10,10'

	if Hardware::CPU.intel?
		sha256 'b26fa523d37262195615285913d68944e2dfec5f625851451f90ed70008a7907'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jdk21.0.10%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.10+10-macos-amd64-full.pkg'
	else
		sha256 'f29809dd795c072cae31789c058e23ea825b4d51bca22e77d29698972f76fb79'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jdk21.0.10%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.10+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

