cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.3,10'

	if Hardware::CPU.intel?
		sha256 'e922e4611060621d5a5ffff9c1bc961aa4f56aff7c9cc4b049866b53b58de47c'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jre21.0.3%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.3+10-macos-amd64-full.pkg'
	else
		sha256 '2703eef5ce681412ecd99862fd1db16e742936cbbc9d0a1e8a54fb0a93c74ed2'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jre21.0.3%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.3+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

