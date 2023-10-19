cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.21,10'

	if Hardware::CPU.intel?
		sha256 '7636da8766a8f0eb3369ed6383aac697093ff71de7bbfedc5453495257eebcbf'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jre11.0.21%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.21+10-macos-amd64-full.pkg'
	else
		sha256 'ed60fc315fb8a8c9e5c7d49c83fad3720abab9d5de7533beaafeda2d25285318'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jre11.0.21%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.21+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

