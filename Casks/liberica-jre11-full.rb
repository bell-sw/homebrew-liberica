cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.26,9'

	if Hardware::CPU.intel?
		sha256 'f3b5e4bd37dac1aafa013791f9ba4fb6efbed95e14293d93a49f29df219bfc32'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jre11.0.26%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.26+9-macos-amd64-full.pkg'
	else
		sha256 'c5ba20eacc6cde69613b8338243fcff19c2a5a604dbd6ebd0e731f036073bfbc'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jre11.0.26%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.26+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

