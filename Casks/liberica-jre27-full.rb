cask 'liberica-jre27-full' do
	desc "100% open-source Java implementation"
	version '27.0.1.1,5'

	if Hardware::CPU.intel?
		sha256 '74253c466e8c6373b62af13d775896edded9c60d547f9c252be3310848172475'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jre27.0.1.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre27.0.1.1+5-macos-amd64-full.pkg'
	else
		sha256 '4ade44c590f3a6bc0e51b81b38addfb8d7f4f4f87652d0d1fd1887b59e753a6d'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jre27.0.1.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre27.0.1.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre27-full'

end

