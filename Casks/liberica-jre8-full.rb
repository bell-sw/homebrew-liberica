cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,332'

	if Hardware::CPU.intel?
		sha256 'db3ce90ed457cdabc7cc3d38cd8d8cb338519550b4546980ee70c5e42e01ba29'

		url "https://download.bell-sw.com/java/8u332%2B9/bellsoft-jre8u332%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u332+9-macos-amd64-full.pkg'
	else
		sha256 '2a9b86dfb7d562a3f0e27850db4ee3780769fe2766bef7f2c90e68d1207401f4'

		url "https://download.bell-sw.com/java/8u332%2B9/bellsoft-jre8u332%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u332+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

