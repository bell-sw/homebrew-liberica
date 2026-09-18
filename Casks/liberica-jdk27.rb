cask 'liberica-jdk27' do
	desc "100% open-source Java implementation"
	version '27,36'

	if Hardware::CPU.intel?
		sha256 'e00caad19846326adae53dc9bbca614eb0f8642c128480071a880f20297c9839'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jdk27%2B36-macos-amd64.pkg"
  		pkg 'bellsoft-jdk27+36-macos-amd64.pkg'
	else
		sha256 '13f83ac172137d76cff947dd29722c19bb78e33ef8bf34819fcdc899ae1e6187'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jdk27%2B36-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk27+36-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27'

end

