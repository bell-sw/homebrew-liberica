cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.13.0.3,5'

	if Hardware::CPU.intel?
		sha256 '9db779518ff781d90e595700b53f4f0a1614ae065084bd51a9f018289a84ca77'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jre21.0.13.0.3%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.13.0.3+5-macos-amd64-full.pkg'
	else
		sha256 'c51e8b1de4064d5969a7df838dc003dbd68a78a76a65383f6f811770b869508d'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jre21.0.13.0.3%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.13.0.3+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

