cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,312'

	if Hardware::CPU.intel?
		sha256 '3b44b939b7cf23d2855bcca215e6ebd62cf00374c4bb55a59e6fa07aa06a7c6b'

		url "https://download.bell-sw.com/java/8u312%2B7/bellsoft-jre8u312%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u312+7-macos-amd64.pkg'
	else
		sha256 '918ac8bde655de4918d9b07d617bf48ffe4ea1515b28deeafdf6332920923349'

		url "https://download.bell-sw.com/java/8u312%2B7/bellsoft-jre8u312%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u312+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

