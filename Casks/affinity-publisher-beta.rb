cask 'affinity-publisher-beta' do
  version '1.7.0.371'
  sha256 '021a650546a8f0fa94ac0cff1c0da8dbbe3ab9f1c7f4ab37d6776bdc4f899735'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/affinity-beta/download/Affinity-Publisher-Beta-#{version}.dmg"
  appcast 'https://forum.affinity.serif.com/index.php?/forum/57-report-bugs-in-publisher-beta-on-mac/'
  name 'Serif Affinity Publisher'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Publisher Beta.app'
end
