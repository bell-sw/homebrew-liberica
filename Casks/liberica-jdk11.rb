cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,9'

	if Hardware::CPU.intel?
		sha256 '5fbe2e5fa6f1eda6cc4a11f00a3c0a50f90e4aa746518335b0868ce8304a552e'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jdk11.0.15.1%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+9-macos-amd64.pkg'
	else
		sha256 '21dff0af417fcaa4331942d99db9fccf0eaf6f772a64425a13d8d0dd7ee56c06'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jdk11.0.15.1%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

