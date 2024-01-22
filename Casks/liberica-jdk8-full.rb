cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,402'

	if Hardware::CPU.intel?
		sha256 '55fd1d59907546127f5336b9e659f57f520ef9f5d1477c5130645a4aa822ac41'

		url "https://download.bell-sw.com/java/8u402%2B7/bellsoft-jdk8u402%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u402+7-macos-amd64-full.pkg'
	else
		sha256 '28811de603d812d6f8a329648efd796126c17c0d9a35de242ebba8d4fee56c06'

		url "https://download.bell-sw.com/java/8u402%2B7/bellsoft-jdk8u402%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u402+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

