cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.18,10'

	if Hardware::CPU.intel?
		sha256 '4f33ff64ba536e9dfa93f2ba51ceddbaf8c5d4c054df7812a5277506ddab15e4'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jre11.0.18%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.18+10-macos-amd64.pkg'
	else
		sha256 'c1df4cb5413776ee342188e02deec3361c0706727a6e6bf6c9e7ae29452d59d7'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jre11.0.18%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.18+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

