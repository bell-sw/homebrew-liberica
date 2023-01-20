cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,362'

	if Hardware::CPU.intel?
		sha256 'a5ed9aa06e15053037684c438aabb11ae83743c56f3b35acd4af3371e4a35d65'

		url "https://download.bell-sw.com/java/8u362%2B9/bellsoft-jdk8u362%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u362+9-macos-amd64-full.pkg'
	else
		sha256 '5abce4a3125c897e47b1b5c8f6bcdb7f9456fe61948e0eebfd0b9f963ff5519a'

		url "https://download.bell-sw.com/java/8u362%2B9/bellsoft-jdk8u362%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u362+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

