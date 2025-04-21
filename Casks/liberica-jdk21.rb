cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.7,9'

	if Hardware::CPU.intel?
		sha256 '17410e08843770f90325dc13d211574fcf3ad9b9228e0913eb91f6d884f1382b'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jdk21.0.7%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.7+9-macos-amd64.pkg'
	else
		sha256 '49ddef60b32f59b4a3daa34761272370e13a5a281fdbfe93df2c7426e20507c3'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jdk21.0.7%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.7+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

