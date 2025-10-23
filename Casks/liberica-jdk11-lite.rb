cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.29,10'

	if Hardware::CPU.intel?
		sha256 '8aa1130b0f751b53874bc6c2638897681c40eeb73647269766d810378b3f5ca0'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jdk11.0.29%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.29+10-macos-amd64-lite.pkg'
	else
		sha256 'd4d7f894fa4f2a83080629f174010bc48e5e356a6ca0e4a923c325cfecf8d1d2'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jdk11.0.29%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.29+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

