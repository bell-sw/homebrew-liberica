cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.4,9'

	if Hardware::CPU.intel?
		sha256 '2724f32c68e1d79c83a28ed2f1926a3b4a35de3d64ed2c7d306b9dd57aa64547'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jre21.0.4%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.4+9-macos-amd64-full.pkg'
	else
		sha256 '3a42e79ab719e3e99f5e0771db07cbeb0146d4200f4f496af18310caaf8e9050'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jre21.0.4%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.4+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

