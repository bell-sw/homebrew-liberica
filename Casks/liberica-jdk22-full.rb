cask 'liberica-jdk22-full' do
	desc "100% open-source Java implementation"
	version '22.0.2,11'

	if Hardware::CPU.intel?
		sha256 '7ddcbb47843571369d5f35bd1e04bfee8d41d730bcbdcd0370ee79da1675b36a'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jdk22.0.2%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk22.0.2+11-macos-amd64-full.pkg'
	else
		sha256 '9dcdf9f0552e66347bff4eefbad3b8cb00016a3c165856e0e571c87423f37c6a'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jdk22.0.2%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk22.0.2+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22-full'

end

