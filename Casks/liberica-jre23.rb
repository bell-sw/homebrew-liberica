cask 'liberica-jre23' do
	desc "100% open-source Java implementation"
	version '23.0.1,13'

	if Hardware::CPU.intel?
		sha256 'b0dae01097609b3e1390d6388c2fb4a85f89d27dea97da66a5fd2d2f149fa300'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jre23.0.1%2B13-macos-amd64.pkg"
  		pkg 'bellsoft-jre23.0.1+13-macos-amd64.pkg'
	else
		sha256 '5ec7752d8bc18de25e4da4a56efbe9ada02d8210dde36580d478430c9d58c1ee'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jre23.0.1%2B13-macos-aarch64.pkg"
  		pkg 'bellsoft-jre23.0.1+13-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre23'

end

