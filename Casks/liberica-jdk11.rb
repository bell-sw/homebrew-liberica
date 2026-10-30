cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.33.0.3,7'

	if Hardware::CPU.intel?
		sha256 'f796f2e73ba806bf8364963cf9987be221c9ab00308e2f6a72bd5db65a080695'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jdk11.0.33.0.3%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.33.0.3+7-macos-amd64.pkg'
	else
		sha256 'ee7de9ad39f3f54849ead1e3bebdbd81f89a9e4edf5591b81d4ae61f5b0a061e'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jdk11.0.33.0.3%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.33.0.3+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

