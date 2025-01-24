cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.14,10'

	if Hardware::CPU.intel?
		sha256 '0e7528f909407ae3b648b7f5036b6d65c82dc85892f3720a291bea6fe0de3b59'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jdk17.0.14%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.14+10-macos-amd64-full.pkg'
	else
		sha256 '6c87e4499641d785834252386c17cc76131410b98df6ea546171c6e8e6bd3b8e'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jdk17.0.14%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.14+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

