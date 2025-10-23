cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.29,10'

	if Hardware::CPU.intel?
		sha256 'ccc267025d85047cd9c762f06e64246c707e075c90b6d112e1dad8e4ee6e414b'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jre11.0.29%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.29+10-macos-amd64-full.pkg'
	else
		sha256 '09bd4d7912cdf99aab966ed21a8cb4a73a6bb701aee6042b568ce831ddfa8c9f'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jre11.0.29%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.29+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

