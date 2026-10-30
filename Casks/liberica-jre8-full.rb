cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,513'

	if Hardware::CPU.intel?
		sha256 '73faf9325d2e5b72042a6c1626b75361cd73ef5c55bff0ec3b63e30801f93a7d'

		url "https://download.bell-sw.com/java/8u513%2B9/bellsoft-jre8u513%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u513+9-macos-amd64-full.pkg'
	else
		sha256 'd4b2fa85a317858bc217800faba3c7caf9252ca79b6a6d79b48e75b756c909ec'

		url "https://download.bell-sw.com/java/8u513%2B9/bellsoft-jre8u513%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u513+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

