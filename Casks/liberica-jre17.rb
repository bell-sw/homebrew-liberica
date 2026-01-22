cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.18,10'

	if Hardware::CPU.intel?
		sha256 'cd600fa61308278de329281ac0898aa976ad1f17ee367bcb1b59461c7ebfb1c5'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jre17.0.18%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.18+10-macos-amd64.pkg'
	else
		sha256 '0cc2b4495f1f0de7b2aa6f13a21753072786565dbe8da84f71d6e804be60d05e'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jre17.0.18%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.18+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

