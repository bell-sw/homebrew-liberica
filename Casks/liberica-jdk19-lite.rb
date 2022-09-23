cask 'liberica-jdk19-lite' do
	desc "100% open-source Java implementation"
	version '19,37'

	if Hardware::CPU.intel?
		sha256 'ac8c78cb23c8d78fc1bbfacb3f8cc3a8d8b4151312ea92c9fb438e7a369b65f6'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jdk19%2B37-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk19+37-macos-amd64-lite.pkg'
	else
		sha256 '1afe2dce6b3acb0f895b44aa085ce737fa75ea4f19b14d34ed72fdb6bd3c6c91'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jdk19%2B37-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk19+37-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19-lite'

end

