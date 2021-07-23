cask 'liberica-jdk16' do
	desc "100% open-source Java implementation"
	version '16.0.2,7'

	if Hardware::CPU.intel?
		sha256 'df9a3477fb29e28e750fd993e338d4ab14e3847d5d13503f257e2a626a81aab2'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jdk16.0.2%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk16.0.2+7-macos-amd64.pkg'
	else
		sha256 '0e2c6c02590f3c7edc61fde78c04dfb0085c6ac0ae966963005bcbb737672f53'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jdk16.0.2%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk16.0.2+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 16'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk16'

end

