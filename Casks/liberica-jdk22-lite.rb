cask 'liberica-jdk22-lite' do
	desc "100% open-source Java implementation"
	version '22.0.1,10'

	if Hardware::CPU.intel?
		sha256 'b9f0108c1380a5bceb5a8c12569f15695f9b4aeaa6099f406cfb1688d22ac14d'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jdk22.0.1%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk22.0.1+10-macos-amd64-lite.pkg'
	else
		sha256 'e78dab259282aa69ed9deb0f66e1df86281242c77f7bc50d52acaf25429989a5'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jdk22.0.1%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk22.0.1+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22-lite'

end

