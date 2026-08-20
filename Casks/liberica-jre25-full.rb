cask 'liberica-jre25-full' do
	desc "100% open-source Java implementation"
	version '25.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 '45a414a9633ed21df5ad5bf6410b9d2cfc5a3ad329e84b8eb886831ebfc1fdc0'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jre25.0.4.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre25.0.4.1+1-macos-amd64-full.pkg'
	else
		sha256 'e3e1c163d5b5b6ee1e96af11aa104e50d58e982324c3163af7b24c57d4b538a2'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jre25.0.4.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre25.0.4.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25-full'

end

