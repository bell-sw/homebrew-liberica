cask 'liberica-jre22' do
	desc "100% open-source Java implementation"
	version '22.0.2,11'

	if Hardware::CPU.intel?
		sha256 '03b22b27721747910f4ce9d9f08e38680236941d8978b6206549647df5bf7a31'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jre22.0.2%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre22.0.2+11-macos-amd64.pkg'
	else
		sha256 '1192a8bcefcb309c36d0b50f308d9a0d1d9d8d7fd8a6628e1f7f9da27fe9c3b4'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jre22.0.2%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre22.0.2+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre22'

end

