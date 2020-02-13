cask 'checksum-validator' do
  version '1.1.6'
  sha256 '3c2c4c7cfd84e3ee68c90ffa617b1f8bae505685384b53dc8681722abb8f1fcc'

  url "https://github.com/alexanderwe/checksum-validator/releases/download/v#{version}/checksum-validator-#{version}.dmg"
  appcast 'https://github.com/alexanderwe/checksum-validator/releases.atom'
  name 'Checksum Validator'
  homepage 'https://github.com/alexanderwe/checksum-validator'

  app 'Checksum Validator.app'

  zap trash: [
               '~/Library/Application Support/checksum-validator',
               '~/Library/Logs/checksum-validator',
               '~/Library/Preferences/com.github.alexanderwe.checksum-validator.helper.plist',
               '~/Library/Preferences/com.github.alexanderwe.checksum-validator.plist',
               '~/Library/Preferences/com.github.alexanderwe.checksum-validator.plist.55TGTA4',
               '~/Library/Saved Application State/com.github.alexanderwe.checksum-validator.savedState',
             ]
end
