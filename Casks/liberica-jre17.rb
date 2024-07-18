cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.12,10'

	if Hardware::CPU.intel?
		sha256 '4329798d89bfb5e07683f08c4e99ac24da84dc63f3f1256395b88fe02c867c52'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jre17.0.12%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.12+10-macos-amd64.pkg'
	else
		sha256 '89950fc6c22920224f0084f20354dfa4b2874f352c31e83bc921cf23f3551038'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jre17.0.12%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.12+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

