cask 'liberica-jre16' do
	desc "100% open-source Java implementation"
	version '16.0.2,7'

	if Hardware::CPU.intel?
		sha256 '35e7e5535625e3778761b75bfe0a502dc81650df06d838853c6b47d1525f086f'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jre16.0.2%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre16.0.2+7-macos-amd64.pkg'
	else
		sha256 '131af6055a73d52340307f10b7d5cddd4e71153d726493d5b5b2e259f5da256f'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jre16.0.2%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre16.0.2+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 16'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre16'

end

