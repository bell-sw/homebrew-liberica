cask 'liberica-jre22-full' do
	desc "100% open-source Java implementation"
	version '22,37'

	if Hardware::CPU.intel?
		sha256 '3ff0a9b38ca7cced4938343fb07464b418e1452a779fef29a058570893621233'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jre22%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre22+37-macos-amd64-full.pkg'
	else
		sha256 '59812c2187ca4366598d8868eb759220f9465e0aa602ccca0f79f9b6d5c81985'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jre22%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre22+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre22-full'

end

