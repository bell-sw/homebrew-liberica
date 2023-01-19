cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.18,10'

	if Hardware::CPU.intel?
		sha256 'f30a956720e555424b02d518aca6a597c4cac259de887dbcbcb945e067132dd4'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jre11.0.18%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.18+10-macos-amd64-full.pkg'
	else
		sha256 '96766525ea77fb684ee221729399730e05adcd562a97c887fa10660759f58a7a'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jre11.0.18%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.18+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

