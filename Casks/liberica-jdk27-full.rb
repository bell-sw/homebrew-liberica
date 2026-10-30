cask 'liberica-jdk27-full' do
	desc "100% open-source Java implementation"
	version '27.0.1.0.3,5'

	if Hardware::CPU.intel?
		sha256 'bfd0a117d52736f55f96ab6731a38ad0743902824e370ba4eda1637f82ec7436'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jdk27.0.1.0.3%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk27.0.1.0.3+5-macos-amd64-full.pkg'
	else
		sha256 '1c15ea0387ca7022365fecd31dbdb0fddbd197dda1e0ed27bb9f35cf9063b14a'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jdk27.0.1.0.3%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk27.0.1.0.3+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27-full'

end

