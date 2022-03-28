cask 'liberica-jdk18-full' do
	desc "100% open-source Java implementation"
	version '18,37'

	if Hardware::CPU.intel?
		sha256 'da2605d5a3cfc632a7e5e12a6879482d4745e788aefd3a4bda54884850e7ad84'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jdk18%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk18+37-macos-amd64-full.pkg'
	else
		sha256 'b67814ec4dc2d8dd423ca6d1c6891023d39c765c85ad14ee254f19731e06ddff'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jdk18%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk18+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-full'

end

