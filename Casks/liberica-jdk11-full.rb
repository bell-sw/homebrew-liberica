cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.33.0.3,7'

	if Hardware::CPU.intel?
		sha256 'bdb66ebfcf39143a821ab93fad28dcf8ec3f630584191472e0134348b72b5a87'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jdk11.0.33.0.3%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.33.0.3+7-macos-amd64-full.pkg'
	else
		sha256 '530c3596bed4831dc0094cd7f6ad839ad3fb93632f4e68879544ae50bff8fc48'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jdk11.0.33.0.3%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.33.0.3+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

