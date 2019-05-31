cask 'hackaru' do
  version '0.1.0'
  sha256 '216a1baa87c5bcc65c84cd569cf492286d910236b7708a3caf6847556dc857df'

  url "https://github.com/ktmouk/hackaru-desktop/releases/download/v#{version}/Hackaru-#{version}.dmg"
  appcast 'https://github.com/ktmouk/hackaru-desktop/releases'
  name 'Hackaru'
  homepage 'https://github.com/ktmouk/hackaru-desktop'

  app 'Hackaru.app'

  uninstall delete: [
                      '~/Library/Application\ Support/Hackaru',
                      '~/Library/Saved\ Application\ State/app.hackaru.savedState/',
                      '~/Library/Preferences/app.hackaru.helper.plist',
                      '~/Library/Preferences/app.hackaru.plist',
                      '~/Library/Logs/Hackaru/',
                    ]
end
