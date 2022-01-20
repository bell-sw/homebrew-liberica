cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.14,9'

	if Hardware::CPU.intel?
		sha256 '4ddabf39b29813c69b68efd6c7959e243b793853445eb347d7fab0bd6efc8ba5'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jdk11.0.14%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.14+9-macos-amd64-lite.pkg'
	else
		sha256 'fabe78403360f38cfe7b6fe7e564f1f1cbd92f30485606816b7c5c2fa50c9c8b'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jdk11.0.14%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.14+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

