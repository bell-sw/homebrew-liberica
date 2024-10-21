cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,432'

	if Hardware::CPU.intel?
		sha256 '4d09eb955b5bb83389ff9b6c54ea94ba73a7d73cbac78a0d7a32cd782c751d67'

		url "https://download.bell-sw.com/java/8u432%2B7/bellsoft-jdk8u432%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u432+7-macos-amd64.pkg'
	else
		sha256 'fae58933b7fd460aab2dbf20d05d77a8bf7324b8d2232ee4cd6d91ebddcdede1'

		url "https://download.bell-sw.com/java/8u432%2B7/bellsoft-jdk8u432%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u432+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

