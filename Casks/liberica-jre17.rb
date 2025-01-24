cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.14,10'

	if Hardware::CPU.intel?
		sha256 'da2fb5c99ca19c3d01d7465fa1f0fd52f6da2c7a058b2aab46a1716e5c7d0677'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jre17.0.14%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.14+10-macos-amd64.pkg'
	else
		sha256 '5c9d32317027da2fac09e8d2ea14bac2a5222902c90342903e97eadd8db1fbee'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jre17.0.14%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.14+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

