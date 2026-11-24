cask 'liberica-jdk27' do
	desc "100% open-source Java implementation"
	version '27.0.1.1,5'

	if Hardware::CPU.intel?
		sha256 '8e1a3aa48992de768bf80acf11028d4b371292fc1aa4c1a4cbd993f25ef76e3e'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jdk27.0.1.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk27.0.1.1+5-macos-amd64.pkg'
	else
		sha256 'd43cff6fab7bb868f7fdc01aba2b1533106e73f12558e0eb74b4714bac186f1e'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jdk27.0.1.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk27.0.1.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk27'

end

