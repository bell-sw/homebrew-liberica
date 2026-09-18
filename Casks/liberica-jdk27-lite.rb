cask 'liberica-jdk27-lite' do
	desc "100% open-source Java implementation"
	version '27,36'

	if Hardware::CPU.intel?
		sha256 'af2fe882f28541cba3048ee0697b114d57b1a39e3ebe148b900e5cc7daa7fdc5'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jdk27%2B36-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk27+36-macos-amd64-lite.pkg'
	else
		sha256 'eb931cc502a84b271308d421cae46a86c581dcd5b7d24d6fabdb178d24afe212'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jdk27%2B36-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk27+36-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27-lite'

end

