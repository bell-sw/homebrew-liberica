cask 'liberica-jdk27-full' do
	desc "100% open-source Java implementation"
	version '27,36'

	if Hardware::CPU.intel?
		sha256 'e360882b37ea29dc80aae12dda2876eb9c310f689d64f0f0113b201bacb1e989'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jdk27%2B36-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk27+36-macos-amd64-full.pkg'
	else
		sha256 'f4083288a8c45a3974c0d5bbf7d3224cb8da3736614fb183fb9c8768fedd745a'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jdk27%2B36-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk27+36-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27-full'

end

