cask 'livestyle' do
  version '1.0.0'
  sha256 'ead74c18fe505610a04ffad63aa8a5365f456b92f8d784d9ed15d937c90a1561'

  # github.com/livestyle/app was verified as official when first introduced to the cask
  url "https://github.com/livestyle/app/releases/download/v#{version}/livestyle-osx.zip"
  appcast 'https://github.com/livestyle/app/releases.atom'
  name 'LiveStyle'
  homepage 'http://livestyle.io/'

  app 'LiveStyle.app'

  
  zap trash: [
               '~/Library/Saved Application State/io.livestyle.app.savedState',
               '~/Library/Caches/livestyle-app',
]
end
