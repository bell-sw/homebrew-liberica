cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,482'

	if Hardware::CPU.intel?
		sha256 'ec5ad68f3f117672a08377880c1962d77c70de0a06dd993497a35830d9264486'

		url "https://download.bell-sw.com/java/8u482%2B10/bellsoft-jre8u482%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u482+10-macos-amd64.pkg'
	else
		sha256 'b5aaa1cccb72f54ffb2cc756c9c16f5532f4140b5ba411270fda458c5433826c'

		url "https://download.bell-sw.com/java/8u482%2B10/bellsoft-jre8u482%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u482+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

