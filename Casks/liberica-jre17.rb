cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.21.1,5'

	if Hardware::CPU.intel?
		sha256 '754383adbb46a9f9d6d86bbe9acbfac6dd7cd9cfb6a6293a678394234b6e2221'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jre17.0.21.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.21.1+5-macos-amd64.pkg'
	else
		sha256 '7e0da014958c490b514cf0f8c3e7265f1275f5d2e4740d1f47664f4f702e8641'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jre17.0.21.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.21.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

