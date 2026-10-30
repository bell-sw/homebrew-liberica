cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.21.0.3,5'

	if Hardware::CPU.intel?
		sha256 '2e704256e391e685da0a4f5ad5dc3cf0ad0661942183e558c7a27581f9eeb3f3'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jdk17.0.21.0.3%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.21.0.3+5-macos-amd64-full.pkg'
	else
		sha256 'e36eb170a0dc5b39f1b926e48fa4f58dcb01d9185ba4856f26110f0ca25ae602'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jdk17.0.21.0.3%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.21.0.3+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

