cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.21.1,5'

	if Hardware::CPU.intel?
		sha256 '3dc00c6ea645c50ce11905b803a0b277288152a915b3f0df7fb56ae87ea13b95'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jre17.0.21.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.21.1+5-macos-amd64-full.pkg'
	else
		sha256 'f35138d65da00fb46abc4f5f58921e4c339d5da7f61f321f8a743bb12ccf0d58'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jre17.0.21.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.21.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

