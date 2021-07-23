cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,302'

	if Hardware::CPU.intel?
		sha256 '2127ef4bc54db188db3ef7c65b66011e418b952b47d9f10a13ee8ef21d453316'

		url "https://download.bell-sw.com/java/8u302%2B8/bellsoft-jdk8u302%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u302+8-macos-amd64.pkg'
	else
		sha256 '009e951f6cfd57120b215edcb4e17ff6c3abdd876f90ba3088a9d789cc1c5c5b'

		url "https://download.bell-sw.com/java/8u302%2B8/bellsoft-jdk8u302%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u302+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

