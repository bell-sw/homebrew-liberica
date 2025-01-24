cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.26,9'

	if Hardware::CPU.intel?
		sha256 'ee326b680f510846b957833d1c8c766a989fd67b5bbc1a2f73f487b0ca4d15da'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jre11.0.26%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.26+9-macos-amd64.pkg'
	else
		sha256 'c89cb1b11e6c9a0ea70ed38b44ab96208c488587bec3d0c4e1b577af69809247'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jre11.0.26%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.26+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

