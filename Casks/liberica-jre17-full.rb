cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.7,7'

	if Hardware::CPU.intel?
		sha256 '0ae2838b3ee36fe36ae3af5acfee08bbcfbe294a724155db847aac94981a2ce3'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jre17.0.7%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.7+7-macos-amd64-full.pkg'
	else
		sha256 '69a8506c46405cc26b252c726648a820f8cbd5df6643529522fa512f00ba0572'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jre17.0.7%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.7+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

