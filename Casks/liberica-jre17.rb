cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.7,7'

	if Hardware::CPU.intel?
		sha256 '79ef4b7f3a952cb8665b66c4cbd7b64903131bef8f55ea1bd6311a12fa882cca'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jre17.0.7%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.7+7-macos-amd64.pkg'
	else
		sha256 'ae2d546fa7709d667deeeefe9aa46d450334b22ba54e5ea197e84b0c5af1c8e9'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jre17.0.7%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.7+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

