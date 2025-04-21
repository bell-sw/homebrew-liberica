cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.7,9'

	if Hardware::CPU.intel?
		sha256 '3badf6de074030e785239ec298c7cd6193c8bb27f2b1fe06e0be195037bb56b8'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jre21.0.7%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.7+9-macos-amd64-full.pkg'
	else
		sha256 '7e2d000eb5cf96f2e67505a4418f28c114a12be91d2e835e774e8cf87f193ec6'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jre21.0.7%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.7+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

