cask 'liberica-jre18-full' do
	desc "100% open-source Java implementation"
	version '18,37'

	if Hardware::CPU.intel?
		sha256 'a8a125420bf52c401b72776a558232465115091e4e870dc7d6892bb992991136'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jre18%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre18+37-macos-amd64-full.pkg'
	else
		sha256 'ee4f167ed29e387ce35c0af10b1c51607a464be033045981f390198e4c8d15f1'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jre18%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre18+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18-full'

end

