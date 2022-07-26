cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.16,8'

	if Hardware::CPU.intel?
		sha256 'dba5ac743d4227bdef915662e73749b05d11944e16a73b01ff0bde7e37cfd535'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jdk11.0.16%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.16+8-macos-amd64.pkg'
	else
		sha256 '5efb0edb38df8b78a24801ce608fb31f296891f65ab332274c2878b56723471a'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jdk11.0.16%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.16+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

