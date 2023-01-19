cask 'liberica-jre19-full' do
	desc "100% open-source Java implementation"
	version '19.0.2,9'

	if Hardware::CPU.intel?
		sha256 '71f99277623316b6cec6287c50942324da64f7a04bf148d92c2e48f7245f689d'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jre19.0.2%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre19.0.2+9-macos-amd64-full.pkg'
	else
		sha256 '3459e66583c2457349876a87a78e3eb7bc058ad902f688b17f1605a9e1cbbd92'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jre19.0.2%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre19.0.2+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre19-full'

end

