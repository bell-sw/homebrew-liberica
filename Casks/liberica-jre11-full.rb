cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.18,10'

	if Hardware::CPU.intel?
		sha256 'f30a956720e555424b02d518aca6a597c4cac259de887dbcbcb945e067132dd4'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jre11.0.18%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.18+10-macos-amd64-full.pkg'
	else
		sha256 'd090bedf92440bab8596cd927d3b6dbae40c5298a28a3ec140ad25c3c52a6551'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jre11.0.18%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.18+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

