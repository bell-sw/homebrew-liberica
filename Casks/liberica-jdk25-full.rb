cask 'liberica-jdk25-full' do
	desc "100% open-source Java implementation"
	version '25.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 'c3d741f3e50b178e6d29f9627622431e3607075fadc6e83cc73577de78215398'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk25.0.4.1+1-macos-amd64-full.pkg'
	else
		sha256 '3212940ac15356e5b70b6379b97184796c0db8aab145ffecd935523e53be8b37'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk25.0.4.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-full'

end

