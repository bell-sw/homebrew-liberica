cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.3.1,2'

	if Hardware::CPU.intel?
		sha256 'd374d294e128bfbe7b9b1210f7e177861890e5ca23c28c2b7bc4bdc1a59eaa94'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jdk17.0.3.1%2B2-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.3.1+2-macos-amd64-lite.pkg'
	else
		sha256 '3b6d16edaadd4a677ebe3e62cb71f47b951e089bdad2011250096839ceda27e9'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jdk17.0.3.1%2B2-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.3.1+2-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

