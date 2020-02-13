cask 'testmace' do
  version '0.0.1-beta.29'
  sha256 'c81f31d3bcb6d8334a3e7aa6d66eedbb83e9a5305efe47a0d2a398af80b45ed8'

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
