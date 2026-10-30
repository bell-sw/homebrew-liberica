cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,513'

	if Hardware::CPU.intel?
		sha256 'df9f1ac3de42e52dad78d58b8702b386c6a754d978e37e72c22a644cd7903fd9'

		url "https://download.bell-sw.com/java/8u513%2B9/bellsoft-jre8u513%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u513+9-macos-amd64.pkg'
	else
		sha256 'eb27dc79848d550976c394944cae0703fb77c381061b73a64d8fecb5bc5173f7'

		url "https://download.bell-sw.com/java/8u513%2B9/bellsoft-jre8u513%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u513+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

