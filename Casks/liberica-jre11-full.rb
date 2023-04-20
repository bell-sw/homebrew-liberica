cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.19,7'

	if Hardware::CPU.intel?
		sha256 '082fe704bba319425a9335376df61144333f95c242b7d526ff73f534a7a0f16d'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jre11.0.19%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.19+7-macos-amd64-full.pkg'
	else
		sha256 '1eacd971698af17f73636a76cb9e8d0f0ce367f247d875c5906f286b04d4d7ba'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jre11.0.19%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.19+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

