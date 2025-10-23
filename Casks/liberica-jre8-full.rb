cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,472'

	if Hardware::CPU.intel?
		sha256 '59500b3feba81b91c690909ac216fd4b06dd16be525f1d8be274ebd1e25f9fc2'

		url "https://download.bell-sw.com/java/8u472%2B9/bellsoft-jre8u472%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u472+9-macos-amd64-full.pkg'
	else
		sha256 '70f06b8e7d1aa22752d9b282f42f9d660b6decf85914d999b22c18de8d0628ef'

		url "https://download.bell-sw.com/java/8u472%2B9/bellsoft-jre8u472%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u472+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

