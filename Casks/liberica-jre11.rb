cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.12,7'

	if Hardware::CPU.intel?
		sha256 'ecbae3be300204270680ef8f4bc4a443a9b494475b2548dced78b0a06d337ea4'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jre11.0.12%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.12+7-macos-amd64.pkg'
	else
		sha256 'b243b994029c4641a68e48e5f768285ecfd512c5f617fb960d9886a7602453e4'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jre11.0.12%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.12+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

