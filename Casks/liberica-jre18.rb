cask 'liberica-jre18' do
	desc "100% open-source Java implementation"
	version '18,37'

	if Hardware::CPU.intel?
		sha256 '0fb8762c5a180ae4fbdda5f20a78efd1521e770321205586c3eeebf334dfe846'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jre18%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jre18+37-macos-amd64.pkg'
	else
		sha256 '9da8f7b3ca792344eb827b87a44807c207f192967afd77f45a3e77b345f62190'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jre18%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jre18+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18'

end

