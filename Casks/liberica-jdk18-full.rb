cask 'liberica-jdk18-full' do
	desc "100% open-source Java implementation"
	version '18.0.1.1,2'

	if Hardware::CPU.intel?
		sha256 'c9736ca8930fe6f76648411deaeaa387998cf7f8460f96166053fcf83a96794e'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jdk18.0.1.1%2B2-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk18.0.1.1+2-macos-amd64-full.pkg'
	else
		sha256 '548f32112671fd71356a756ac68f813dfd1d5acf033e5831959c01254e8460c9'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jdk18.0.1.1%2B2-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk18.0.1.1+2-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-full'

end

