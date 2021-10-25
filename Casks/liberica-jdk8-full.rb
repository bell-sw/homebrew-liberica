cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,312'

	if Hardware::CPU.intel?
		sha256 '3d0ddb7fd451dc93ffd05126c632fb5ca637d241bfa22dac37459fa5123ca435'

		url "https://download.bell-sw.com/java/8u312%2B7/bellsoft-jdk8u312%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u312+7-macos-amd64-full.pkg'
	else
		sha256 '194a2a0f535653575c92cb9543d20bcc73bf212bff94a15338e22094b578f5c9'

		url "https://download.bell-sw.com/java/8u312%2B7/bellsoft-jdk8u312%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u312+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

