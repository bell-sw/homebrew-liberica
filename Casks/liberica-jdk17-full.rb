cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.17,11'

	if Hardware::CPU.intel?
		sha256 'aa14dadccc068602ea35a10a6d01349a5a25546daf3e8350062e4a5062331cb9'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jdk17.0.17%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.17+11-macos-amd64-full.pkg'
	else
		sha256 '96e5a9f64dc684a508c55c2f9bbb696f025527d9483bdc0914079e7bc7d1cac1'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jdk17.0.17%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.17+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

