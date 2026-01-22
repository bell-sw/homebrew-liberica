cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.10,10'

	if Hardware::CPU.intel?
		sha256 '12884e54c6bdca56176b2eedd7df866ad9f54b44f9d355b53f20522d362095ee'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jdk21.0.10%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.10+10-macos-amd64.pkg'
	else
		sha256 'dfd04acbdc7781c163661582c19cb0aa7dadba9e7957451f5c316617ee6e9a6a'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jdk21.0.10%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.10+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

