cask 'liberica-jre18' do
	desc "100% open-source Java implementation"
	version '18.0.2,10'

	if Hardware::CPU.intel?
		sha256 'dadc9f7af7a92060d2040587d163625ad058af4ab2ce386da403aba9874e1ca0'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jre18.0.2%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre18.0.2+10-macos-amd64.pkg'
	else
		sha256 '1ceffa57845887b5c8bdba94f7ff0c537aaa26d33dc3b6f0dd4f23ddcf05e820'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jre18.0.2%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre18.0.2+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18'

end

