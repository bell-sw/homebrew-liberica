cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,9'

	if Hardware::CPU.intel?
		sha256 '0305e1f8f9453f94f166c255164da1b2eccdc7c2bef6849366710e2fcdb39370'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jre11.0.15.1%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.15.1+9-macos-amd64-full.pkg'
	else
		sha256 'da4a0a741581035c5089d44e737d197efe458a63cd23f5511e0c18ba5bf77794'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jre11.0.15.1%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.15.1+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

