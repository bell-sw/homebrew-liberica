cask 'liberica-jdk27-lite' do
	desc "100% open-source Java implementation"
	version '27.0.1.1,5'

	if Hardware::CPU.intel?
		sha256 '01d03c0e461126e52a1fbaf6648ba847b9ff7b7e1ce2f41b4af827036a5569ef'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jdk27.0.1.1%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk27.0.1.1+5-macos-amd64-lite.pkg'
	else
		sha256 'b89d0246f29d055e35742b5c1a5a487b5f25f34fd062cb9be024c7e3a235a583'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jdk27.0.1.1%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk27.0.1.1+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27-lite'

end

