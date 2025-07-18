cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.28,12'

	if Hardware::CPU.intel?
		sha256 '2e2930e4989e8c6642c524d58ea70fc4ef331235f26f3062de4a5b29d8cd4a73'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jdk11.0.28%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.28+12-macos-amd64.pkg'
	else
		sha256 'dcc3822036438c15657f1909d633c63e5f64c0940f440114732a008afb3aa362'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jdk11.0.28%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.28+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

