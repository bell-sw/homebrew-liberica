cask 'liberica-jdk27' do
	desc "100% open-source Java implementation"
	version '27.0.1.0.3,5'

	if Hardware::CPU.intel?
		sha256 '87706c032c9c5e8ea4c5fc24b1b232890e7a3bb5dc47aacabcd8451457754400'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jdk27.0.1.0.3%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk27.0.1.0.3+5-macos-amd64.pkg'
	else
		sha256 '0f148a592022e8f8c238fcc842ac53fc1cbcb74a452e47cf62a205d6ae54951e'

		url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jdk27.0.1.0.3%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk27.0.1.0.3+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27'

end

