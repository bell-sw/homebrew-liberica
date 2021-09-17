cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17,35'

	if Hardware::CPU.intel?
		sha256 'ddf1587eda3bf3ab7dc9ff8004b9f6bb69b8e6234a935966671a92eb926f5cfd'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jre17%2B35-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17+35-macos-amd64-full.pkg'
	else
		sha256 '90310434a7d5c282100b559a6ca47e79972710a08ee74c7dcbc2db1d78bb6e15'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jre17%2B35-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17+35-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

