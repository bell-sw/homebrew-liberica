cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,332'

	if Hardware::CPU.intel?
		sha256 'ac94a7bf7407771b60a7e2d7cca67265e844ce1ae6b93c09d935330a9cba9bfa'

		url "https://download.bell-sw.com/java/8u332%2B9/bellsoft-jdk8u332%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u332+9-macos-amd64.pkg'
	else
		sha256 '41548d72546a19ace11bd69eb65e0bcddce3fba796c6324d0f38856905ebc444'

		url "https://download.bell-sw.com/java/8u332%2B9/bellsoft-jdk8u332%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u332+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

