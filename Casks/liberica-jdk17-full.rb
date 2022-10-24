cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.5,8'

	if Hardware::CPU.intel?
		sha256 'ce95aa962ec3a07dc6b3316e8c47c24d17d41cbcce7b3659cff002a640ca0c78'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.5+8-macos-amd64-full.pkg'
	else
		sha256 'd23a31c1815dddeab192d90f894a70fbfd2d89e972583417101d80dc9e0a2021'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.5+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

