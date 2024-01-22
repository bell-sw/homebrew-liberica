cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.10,13'

	if Hardware::CPU.intel?
		sha256 'b846698dfda3b7cbd124921110985856bd5b84b8d2109e99f5022f0437ec413f'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jre17.0.10%2B13-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.10+13-macos-amd64-full.pkg'
	else
		sha256 'e3a3b6381f4816bfd7051d7457b3dea342c3a5aa375c1da88b896e6a4862a1b0'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jre17.0.10%2B13-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.10+13-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

