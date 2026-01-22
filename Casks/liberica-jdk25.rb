cask 'liberica-jdk25' do
	desc "100% open-source Java implementation"
	version '25.0.2,12'

	if Hardware::CPU.intel?
		sha256 '745ced39ba52073a7710304736567e7a5622302f2dea6b35a30520c26a5a67f8'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jdk25.0.2%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk25.0.2+12-macos-amd64.pkg'
	else
		sha256 '59174650abdfe9286c59035ae853780807e23179414372796fb9748aa301fc77'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jdk25.0.2%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk25.0.2+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25'

end

