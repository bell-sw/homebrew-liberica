cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.16.1,1'

	if Hardware::CPU.intel?
		sha256 '2e9efea5aa1c8ceb446d91bb57b547e05fce12c018f690b2930e159175be2b8f'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.16.1+1-macos-amd64.pkg'
	else
		sha256 '620fbbb35f6498522fcc44f14fb69780e3ebd65926a7af132906f597b14cd485'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.16.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

