cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.3,7'

	if Hardware::CPU.intel?
		sha256 '205d8cacdaf594d13a48ff4e411c4fc79d47995281c866cd80d4faa4b79fa08c'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jre17.0.3%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.3+7-macos-amd64.pkg'
	else
		sha256 'f38558f92148589d162373e9e476c451ab24095dc93345f0e0407d64a46da8d4'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jre17.0.3%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.3+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

