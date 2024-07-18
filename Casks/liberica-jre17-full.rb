cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.12,10'

	if Hardware::CPU.intel?
		sha256 'c8d26b5760239beaf1ccd1e098dfa3d45c41a0b49ab89bb28babfae7f864e3fc'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jre17.0.12%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.12+10-macos-amd64-full.pkg'
	else
		sha256 '877ff322ba5f8d2fa08719a99300e573e41715a0a4f0ea939e616a36cc67c802'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jre17.0.12%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.12+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

