cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.4,9'

	if Hardware::CPU.intel?
		sha256 'c1a14d2c106f79548da19708fbf6a99e27eeba7a0bf1a8ad9bd3fac57c543ad4'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jdk21.0.4%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.4+9-macos-amd64-full.pkg'
	else
		sha256 'dff3cf43d2592ec5ee7f97acb1624628ebc2de11395d103b0f3d8e5efaa94d9f'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jdk21.0.4%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.4+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

