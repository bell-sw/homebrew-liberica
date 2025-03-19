cask 'liberica-jdk24-full' do
	desc "100% open-source Java implementation"
	version '24,37'

	if Hardware::CPU.intel?
		sha256 'e66652652bb1c0aaebdcbf454afb539cf7098e1adcceccd62d3312a112953952'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jdk24%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk24+37-macos-amd64-full.pkg'
	else
		sha256 '9766dcf606ea2886049d9ee62cfc31be33753bc8bae1c75125947053d472a26e'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jdk24%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk24+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24-full'

end

