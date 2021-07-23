cask 'liberica-jre16-full' do
	desc "100% open-source Java implementation"
	version '16.0.2,7'

	if Hardware::CPU.intel?
		sha256 'db847e8b2146f76733b05ade17b7c2f1382075c3a9473fca80f025f178e17c7d'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jre16.0.2%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre16.0.2+7-macos-amd64-full.pkg'
	else
		sha256 '248ba2a44d0f2d874d196c7fdc13643df7509fdbd830aaff01c70595925c3d9a'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jre16.0.2%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre16.0.2+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 16'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre16-full'

end

