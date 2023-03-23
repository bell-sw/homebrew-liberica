cask 'liberica-jdk20-full' do
	desc "100% open-source Java implementation"
	version '20,37'

	if Hardware::CPU.intel?
		sha256 '1430aa9a9757cd217bd956c0359b8a1d3980563aea65ed91c9c4d737e9132766'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jdk20%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk20+37-macos-amd64-full.pkg'
	else
		sha256 '16fd19c5778fc272509609e785098395fa708320f6bf6d20de49f1eb4f582665'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jdk20%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk20+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20-full'

end

