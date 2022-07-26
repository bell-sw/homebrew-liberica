cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,342'

	if Hardware::CPU.intel?
		sha256 'cc449a780db45d8ed914247f0cde93f2570b45647b6e75b5d49d950d6b91d0fd'

		url "https://download.bell-sw.com/java/8u342%2B7/bellsoft-jdk8u342%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u342+7-macos-amd64-full.pkg'
	else
		sha256 'c6341dc7b3d1a49a78d940da7617d7a77b879e4c69b8dc8a2801b9f385cecd1a'

		url "https://download.bell-sw.com/java/8u342%2B7/bellsoft-jdk8u342%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u342+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

