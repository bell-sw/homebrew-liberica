cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,312'

	if Hardware::CPU.intel?
		sha256 '0cf247e4eae3e22ecc95ce0252ed63a1dd809788762ace05ea7cf2ba7ebcc669'

		url "https://download.bell-sw.com/java/8u312%2B7/bellsoft-jdk8u312%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u312+7-macos-amd64.pkg'
	else
		sha256 '45e68639b302b66147a7ebb93f5a6cb83d159f68839adad638c721f840f4368d'

		url "https://download.bell-sw.com/java/8u312%2B7/bellsoft-jdk8u312%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u312+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

