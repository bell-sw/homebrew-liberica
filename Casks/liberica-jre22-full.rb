cask 'liberica-jre22-full' do
	desc "100% open-source Java implementation"
	version '22.0.1,10'

	if Hardware::CPU.intel?
		sha256 '550d2557b55cb6ac5380af07c14bf210ff425209cb02b7de70492a3dfa57e7b9'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jre22.0.1%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre22.0.1+10-macos-amd64-full.pkg'
	else
		sha256 '8262d4a2b5dda771e94cbe2cbd6954b7da66d11361e68f0d1dd4a7fbaa2732e9'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jre22.0.1%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre22.0.1+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre22-full'

end

