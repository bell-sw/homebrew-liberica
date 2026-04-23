cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.31,11'

	if Hardware::CPU.intel?
		sha256 '0abc3af015bc4a5f5f609137ebfce52ad6f1be71329727f7b7543cce514b6863'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jdk11.0.31%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.31+11-macos-amd64-full.pkg'
	else
		sha256 'daba90b4a40892e8d4136a0c2574fdd7b86f362ee175d8ac2e8bcd48bfc89809'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jdk11.0.31%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.31+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

