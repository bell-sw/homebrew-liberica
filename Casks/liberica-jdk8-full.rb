cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,513'

	if Hardware::CPU.intel?
		sha256 '0b0a92e59e4313d32c58702fc53d54b0572d5e76047b6cc7bbafaa3748105ee4'

		url "https://download.bell-sw.com/java/8u513%2B9/bellsoft-jdk8u513%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u513+9-macos-amd64-full.pkg'
	else
		sha256 'e1af655a958f0a99d8a864d97a97037b2e7f9136e1a2d2a88e609fd56b11aa38'

		url "https://download.bell-sw.com/java/8u513%2B9/bellsoft-jdk8u513%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u513+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

