cask 'liberica-jre27' do
	desc "100% open-source Java implementation"
	version '27,36'

	if Hardware::CPU.intel?
		sha256 '25fc8ffda2b7d2c6bc7a5a09b202719d1617c05d16580d03f19ab30e7e1bbce7'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jre27%2B36-macos-amd64.pkg"
  		pkg 'bellsoft-jre27+36-macos-amd64.pkg'
	else
		sha256 '5380960b9bf49feb89d0bca224c66bc34835779ceb9ddeb683d44b6d5407e500'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jre27%2B36-macos-aarch64.pkg"
  		pkg 'bellsoft-jre27+36-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre27'

end

