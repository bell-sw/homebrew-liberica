cask 'liberica-jdk22-lite' do
	desc "100% open-source Java implementation"
	version '22,37'

	if Hardware::CPU.intel?
		sha256 'e0153da22e6b842e7d6cf1e8555bbc01db8ac39d85e88479ffe5cf5e84547fbb'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jdk22%2B37-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk22+37-macos-amd64-lite.pkg'
	else
		sha256 'c14330e26d0c71b4cdf136c7bda0ff72a7021147a852ddf1d2f8e20714bc452e'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jdk22%2B37-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk22+37-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22-lite'

end

