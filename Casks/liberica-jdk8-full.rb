cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,482'

	if Hardware::CPU.intel?
		sha256 'f31b38e13caa0d25399b62931a9cf7264514aac2aede2d3956649e88c6891846'

		url "https://download.bell-sw.com/java/8u482%2B10/bellsoft-jdk8u482%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u482+10-macos-amd64-full.pkg'
	else
		sha256 '14120e6aedf9718de074742e5329f6e8a3aaa1cb2fa1660125afb165bd8c50bc'

		url "https://download.bell-sw.com/java/8u482%2B10/bellsoft-jdk8u482%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u482+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

