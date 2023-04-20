cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,372'

	if Hardware::CPU.intel?
		sha256 'e7baac0f7a518089003d4b28128823f3cf3610640de2f42979167ffec4cc136d'

		url "https://download.bell-sw.com/java/8u372%2B7/bellsoft-jre8u372%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u372+7-macos-amd64.pkg'
	else
		sha256 'ee960f49c6fb2027fda5ddb714bd3765b89387c75238d60529d5407a345fa789'

		url "https://download.bell-sw.com/java/8u372%2B7/bellsoft-jre8u372%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u372+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

