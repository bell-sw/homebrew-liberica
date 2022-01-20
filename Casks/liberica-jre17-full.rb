cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.2,9'

	if Hardware::CPU.intel?
		sha256 'ebf971828ad07ea5a58f53f1d8ab9f27c3615d477e29b86d5609d07146d67a4f'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jre17.0.2%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.2+9-macos-amd64-full.pkg'
	else
		sha256 '77c1e91c8dc3c4a90166cccfc9f9148d679c339334655c6eea1c24394faee5ee'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jre17.0.2%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.2+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

