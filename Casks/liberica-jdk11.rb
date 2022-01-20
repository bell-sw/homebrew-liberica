cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.14,9'

	if Hardware::CPU.intel?
		sha256 '6053c1e1f01a2312176d12218c96c8e104c338d14fb71cfc058ddfb81d3b68c7'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jdk11.0.14%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.14+9-macos-amd64.pkg'
	else
		sha256 'ed7566db8183b1ee716c2368ba3bc4820a252cd8d355cac954e789333baaee6d'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jdk11.0.14%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.14+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

