cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,432'

	if Hardware::CPU.intel?
		sha256 '9002817852d57a6400406a4605e2046702b32a974ee5ea76f693639faefcf9aa'

		url "https://download.bell-sw.com/java/8u432%2B7/bellsoft-jdk8u432%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u432+7-macos-amd64-full.pkg'
	else
		sha256 'b7a21075a6a6453a989663af1f6352eafcb0a814ba69f68f95effc960bebc792'

		url "https://download.bell-sw.com/java/8u432%2B7/bellsoft-jdk8u432%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u432+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

