cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.2,9'

	if Hardware::CPU.intel?
		sha256 '01988cf16cf56ea427ac0051b1d0e41d28b635c29ca243029c7d4f91d9e73411'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.2+9-macos-amd64.pkg'
	else
		sha256 '795417759c8113185dc62c0a065982d303c31c2a34fa4b280fc1b0e9d70abb4e'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.2+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

