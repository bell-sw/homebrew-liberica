cask 'liberica-jdk23' do
	desc "100% open-source Java implementation"
	version '23.0.2,9'

	if Hardware::CPU.intel?
		sha256 'fc6500a0f1402b8ae9b5f84152f10abcc426dc8e44196b46f1461ad1f9589365'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jdk23.0.2%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk23.0.2+9-macos-amd64.pkg'
	else
		sha256 '4c74eb8dcf0a1d8e44dcf8ed835f9bb196f07fbc48f4a3eb386d07b3d8fc277f'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jdk23.0.2%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk23.0.2+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23'

end

