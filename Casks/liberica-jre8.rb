cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,332'

	if Hardware::CPU.intel?
		sha256 'a3f2c9b8153f462a6dcf93ce4879c14cc629037c227319f8de836e9eae95e471'

		url "https://download.bell-sw.com/java/8u332%2B9/bellsoft-jre8u332%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u332+9-macos-amd64.pkg'
	else
		sha256 '02015862f605754464c2a85a65aababcb34f1d3f504a31684acb2af4fb9e53f4'

		url "https://download.bell-sw.com/java/8u332%2B9/bellsoft-jre8u332%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u332+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

