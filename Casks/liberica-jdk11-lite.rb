cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.16,8'

	if Hardware::CPU.intel?
		sha256 '9fd4d6b77569acb46b50455556420da65bbc3019062f2a27b395b85220b886f4'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jdk11.0.16%2B8-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.16+8-macos-amd64-lite.pkg'
	else
		sha256 '56b9f0aa1eafe4b5b89ee271616624861a3fa15d15422850a64737f8f56cfef0'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jdk11.0.16%2B8-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.16+8-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

