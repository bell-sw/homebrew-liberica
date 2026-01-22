cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.18,10'

	if Hardware::CPU.intel?
		sha256 'b13660d789c92b0a84ae08b8003de9c07fa486e3e7846df6eed793298c8f99db'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jdk17.0.18%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.18+10-macos-amd64.pkg'
	else
		sha256 '71ba5361c67616ee32c847f96a76147b172cf69dc7259a4dd837eff0293d6733'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jdk17.0.18%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.18+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

