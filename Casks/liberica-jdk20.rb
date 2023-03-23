cask 'liberica-jdk20' do
	desc "100% open-source Java implementation"
	version '20,37'

	if Hardware::CPU.intel?
		sha256 'c021aff84752bf840bb365bd18344222feffe01e64b04b8c92610b6531a19366'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jdk20%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jdk20+37-macos-amd64.pkg'
	else
		sha256 'fba2c1bbf558a3b1335f427e3e4790ecc3f5c08742d15a7eb5329e89008c50f2'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jdk20%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk20+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20'

end

