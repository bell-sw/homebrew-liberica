cask 'liberica-jre27-full' do
	desc "100% open-source Java implementation"
	version '27.0.1.0.3,5'

	if Hardware::CPU.intel?
		sha256 'f10d315eba11c852c0eca584ce405d57d7595e35952e5ec8face3df9c6624839'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jre27.0.1.0.3%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre27.0.1.0.3+5-macos-amd64-full.pkg'
	else
		sha256 '8b7dd1b64f3d49f9442e56ea65491c6936ab902c8bfabdb6933d164c521c22a8'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jre27.0.1.0.3%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre27.0.1.0.3+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre27-full'

end

