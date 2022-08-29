cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 '2d0062416a6afe4b6c522e43f04a77cc34dee058391132e4d5a862b1934203b0'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jre17.0.4.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.4.1+1-macos-amd64-full.pkg'
	else
		sha256 'f43b6b0eda42148244e6a5e5b3264d4822d6c528462e98c69296d723a5d604d5'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jre17.0.4.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.4.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

