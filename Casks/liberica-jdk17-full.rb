cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.7,7'

	if Hardware::CPU.intel?
		sha256 'cbd754b863d8d250af5d154bf09ba16b9b14ac4fa930e67cfb017f8447a7e85f'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.7+7-macos-amd64-full.pkg'
	else
		sha256 '09086d97dd22198dd9d4debfdb070a352d112fccf36809a1ca7108323c0e6a61'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.7+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

