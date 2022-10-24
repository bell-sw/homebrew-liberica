cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.17,7'

	if Hardware::CPU.intel?
		sha256 '60905ce40c02731ad92ab707979c38b92b09b0aec4b97ccc1a746e6224722c40'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jdk11.0.17%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.17+7-macos-amd64.pkg'
	else
		sha256 '85037885c9bfd8720959771d0fa7aaedda28853bb5961bc7f6060320547d184a'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jdk11.0.17%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.17+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

