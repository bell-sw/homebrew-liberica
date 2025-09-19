cask 'liberica-jre25-full' do
	desc "100% open-source Java implementation"
	version '25,37'

	if Hardware::CPU.intel?
		sha256 'fb0336c96eba0e6f165809623d27165a3bd66f6a6990625af147a253e1126231'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jre25%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre25+37-macos-amd64-full.pkg'
	else
		sha256 'cbd0ed64aff14d013097df77884af1dd5f36371bd897feb90c40819a71b5cb67'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jre25%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre25+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25-full'

end

