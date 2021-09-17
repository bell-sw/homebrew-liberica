cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17,35'

	if Hardware::CPU.intel?
		sha256 '433b001493a7e45520470f54b506bc172614db36503a75c1ca281de77ab47b0b'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jre17%2B35-macos-amd64.pkg"
  		pkg 'bellsoft-jre17+35-macos-amd64.pkg'
	else
		sha256 'a269138faf6e3214a57c789f671d5ce12d4f1fbbd3f7baf89249633da868b9bf'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jre17%2B35-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17+35-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

