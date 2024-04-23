cask 'liberica-jre22' do
	desc "100% open-source Java implementation"
	version '22.0.1,10'

	if Hardware::CPU.intel?
		sha256 'cd7336aa1dc26366387ad7f929100dae57ee00932c036df032f4d6ee22671977'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jre22.0.1%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre22.0.1+10-macos-amd64.pkg'
	else
		sha256 '2403438c4dce4ee93b99ed737128ae7561b1ca8e10eef6b086a144aff0b06fb0'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jre22.0.1%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre22.0.1+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre22'

end

