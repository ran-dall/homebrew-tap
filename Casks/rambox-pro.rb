cask 'rambox-pro' do
  version '1.2.2'
  sha256 'a6042efd301cfb820865cc2984b08362bb388f30ccea2abdc82562b181e515f2'

  # github.com/ramboxapp/download was verified as official when first introduced to the cask
  url "https://github.com/ramboxapp/download/releases/download/v#{version}/RamboxPro-#{version}-mac.dmg"
  appcast 'https://github.com/ramboxapp/download/releases.atom'
  name 'RamboxPro'
  homepage 'https://rambox.pro/'

  app 'RamboxPro.app'

  zap trash: [
               '~/Library/Application Support/CrashReporter/RamboxPro Helper_*.plist',
               '~/Library/Application Support/CrashReporter/RamboxPro_*.plist',
               '~/Library/Application Support/RamboxPro',
               '~/Library/Caches/com.grupovrs.ramboxpro',
               '~/Library/Caches/com.grupovrs.ramboxpro.ShipIt',
               '~/Library/Logs/RamboxPro',
               '~/Library/Preferences/ByHost/com.grupovrs.ramboxpro.ShipIt.*.plist',
               '~/Library/Preferences/com.grupovrs.ramboxpro.helper.plist',
               '~/Library/Preferences/com.grupovrs.ramboxpro.plist',
               '~/Library/Saved Application State/com.grupovrs.ramboxpro.savedState',
             ]
end
