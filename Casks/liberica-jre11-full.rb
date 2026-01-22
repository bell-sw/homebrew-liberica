cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.30,9'

	if Hardware::CPU.intel?
		sha256 '8f38f5d1aacbcda5495c767de7fe7d102e14725ae99d9d40b12833953c921b77'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jre11.0.30%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.30+9-macos-amd64-full.pkg'
	else
		sha256 'ddf9759a378632df665112f061b26874849d516734e1ad8ac617fecab3f5efc6'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jre11.0.30%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.30+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

