cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,352'

	if Hardware::CPU.intel?
		sha256 '38e1cddf2b117bef04612df4faae3f42af66f27470bae17f3a3543e7c7205752'

		url "https://download.bell-sw.com/java/8u352%2B8/bellsoft-jdk8u352%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u352+8-macos-amd64-full.pkg'
	else
		sha256 '9cec6208df052e2241ce194a5d091b469873bb42cfdc79ffd282354e088c7530'

		url "https://download.bell-sw.com/java/8u352%2B8/bellsoft-jdk8u352%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u352+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

