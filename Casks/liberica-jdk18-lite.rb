cask 'liberica-jdk18-lite' do
	desc "100% open-source Java implementation"
	version '18,37'

	if Hardware::CPU.intel?
		sha256 'b7b711abdf88d789dfa6cb864d49000b3c2945fbab7efc38aad866d44156b1b3'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jdk18%2B37-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk18+37-macos-amd64-lite.pkg'
	else
		sha256 '7f4b298ebfc3abeaf5ef585b97b39b6601a7a844b1e14003a82998c6adc97584'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jdk18%2B37-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk18+37-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-lite'

end

