cask 'liberica-jdk22-full' do
	desc "100% open-source Java implementation"
	version '22,37'

	if Hardware::CPU.intel?
		sha256 '41d6e441e7f996f0bc82628fd8b2e3102887b934b2d84a975ead7de8e5b2c54f'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jdk22%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk22+37-macos-amd64-full.pkg'
	else
		sha256 'c222e76b3c4986414ea1b71a704b80e7650b12171f1e25072640f0cbbd34a48f'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jdk22%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk22+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22-full'

end

