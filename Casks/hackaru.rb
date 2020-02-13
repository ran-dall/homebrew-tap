cask 'hackaru' do
  version '1.1.1'
  sha256 '26343a8046a7a1001f8866d6f1ef97f8afb5515032608ed5a218a0b90d55147a'

  url "https://github.com/ktmouk/hackaru-desktop/releases/download/v#{version}/Hackaru-#{version}.dmg"
  appcast 'https://github.com/ktmouk/hackaru-desktop/releases'
  name 'Hackaru'
  homepage 'https://github.com/ktmouk/hackaru-desktop'

  app 'Hackaru.app'

  zap trash: [
               '~/Library/Application Support/Hackaru',
               '~/Library/Preferences/app.hackaru.helper.plist',
               '~/Library/Preferences/app.hackaru.plist',
               '~/Library/Saved Application State/app.hackaru.savedState',
               '~/Library/Logs/Hackaru/',
             ]
end
