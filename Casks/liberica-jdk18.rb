cask 'liberica-jdk18' do
	desc "100% open-source Java implementation"
	version '18.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 '33701ad5bd4d54cc9c8a4940b4f0f33ef4169141f5d359002388d50c175d9746'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk18.0.2.1+1-macos-amd64.pkg'
	else
		sha256 '76cdd92b99f7e2e4ed65fcbd6576fa0092f725e5778c86420862762bca183a14'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk18.0.2.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18'

end

