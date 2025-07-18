cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.8,12'

	if Hardware::CPU.intel?
		sha256 'a6437303d5363e5cf7fc582e8ef24ccbe57477fda70b99c4164b9d0d25b7a50b'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jre21.0.8%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.8+12-macos-amd64-full.pkg'
	else
		sha256 'a0045507ed0dd6d80f9ef6c2152751d1ba683aae1587d3da60845268dcbc55f3'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jre21.0.8%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.8+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

