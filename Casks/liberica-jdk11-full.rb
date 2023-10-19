cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.21,10'

	if Hardware::CPU.intel?
		sha256 '6addd2763d8d997ed8f9401247f6442042f0581f50a0c4732a56934508f81812'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jdk11.0.21%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.21+10-macos-amd64-full.pkg'
	else
		sha256 'b8d260b0651a54e700fc067ff00b511746a5e88b5f6e99d9d9cb277e9ffd0fde'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jdk11.0.21%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.21+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

