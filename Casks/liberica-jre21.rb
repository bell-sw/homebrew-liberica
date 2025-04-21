cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.7,9'

	if Hardware::CPU.intel?
		sha256 '71cfd4c5a4f7f6641c8f1c19c5e792f83b9f10525f35638edd3320e68fc45e40'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jre21.0.7%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.7+9-macos-amd64.pkg'
	else
		sha256 '6da69feb0bae75c059c959722fe7ed65aa5bea60a7a40192a07d4d902c197754'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jre21.0.7%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.7+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

