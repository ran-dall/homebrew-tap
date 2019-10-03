cask 'mouse-fix' do
  version :latest
  sha256 :no_check

  url 'https://mousefix.org/maindownload/MacMouseFix.zip'
  name 'Mouse Fix'
  homepage 'https://mousefix.org/'

  prefpane 'Mouse Fix.prefPane'
end
