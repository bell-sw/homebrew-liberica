cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.18,10'

	if Hardware::CPU.intel?
		sha256 '39ffd998798d6851c9a0df2d7fc1bb5059dc843ebfa13508927207c3301ca734'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jdk17.0.18%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.18+10-macos-amd64-lite.pkg'
	else
		sha256 '18a4df541ab342b65748f7ec4023e2559061171b06f71d31d377c50098ab9f2f'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jdk17.0.18%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.18+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

