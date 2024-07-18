cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.24,9'

	if Hardware::CPU.intel?
		sha256 '2225c3c5c9530ec51bbb3e129cd0bb591eadb068f2b393def153b0a45d7400c2'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jre11.0.24%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.24+9-macos-amd64-full.pkg'
	else
		sha256 '0f6060d1ed5ab9e592a22038f74a88ae212692253a01e316caa2a3926f5caa1a'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jre11.0.24%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.24+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

