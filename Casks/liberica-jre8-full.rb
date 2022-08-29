cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,345'

	if Hardware::CPU.intel?
		sha256 'e3c916aa03dbb00237e5b46f78291cbdb66df6b462e9724a3543f5b32b720f1a'

		url "https://download.bell-sw.com/java/8u345%2B1/bellsoft-jre8u345%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u345+1-macos-amd64-full.pkg'
	else
		sha256 '45620cec54b5cadba4ea334aa69338c0ded8dfa439e9aaa514ddfa7dfe60442f'

		url "https://download.bell-sw.com/java/8u345%2B1/bellsoft-jre8u345%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u345+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

