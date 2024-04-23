cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.3,10'

	if Hardware::CPU.intel?
		sha256 '6ac269e897b419bf2db68b63db49d6621755982afc5e83010cc7b2bef6d5a33a'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jdk21.0.3%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.3+10-macos-amd64.pkg'
	else
		sha256 '965e2d577a59504d1ce3aef0156f3730640945c4bc6a1e35bc771ed8af08cdb8'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jdk21.0.3%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.3+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

