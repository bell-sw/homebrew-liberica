cask 'liberica-jdk23-lite' do
	desc "100% open-source Java implementation"
	version '23.0.2,9'

	if Hardware::CPU.intel?
		sha256 '869c431d48fdb25f82c609ae7534db44a5335c865c3981ba2d387b1c2c8cc49c'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jdk23.0.2%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk23.0.2+9-macos-amd64-lite.pkg'
	else
		sha256 '3fa647bd9b3a65fc71877246fafd61b4d54021db28395f569278f3514d9e1e41'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jdk23.0.2%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk23.0.2+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23-lite'

end

