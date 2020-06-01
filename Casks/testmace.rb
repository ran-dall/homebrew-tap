cask 'testmace' do
  version '1.0.0'
  sha256 '5e87f73c6a459385d6f9a3908027a18e64cf5cac29eb1e960af3ed99817f997d'

  url 'https://download.testmace.com/TestMace.dmg'
  appcast 'https://testmace.com/blog/'
  name 'TestMace'
  homepage 'https://testmace.com/'

  app 'TestMace.app'

  zap trash: [
               '~/Library/Application\ Support/TestMace',
               '~/Library/Application\ Support/com.electron.testmace.plist',
               '~/Library/Logs/TestMace',
             ]
end
