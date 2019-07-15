cask "testmace" do
  version "0.0.1-beta.12"
  sha256 "0cb55918ca62c11cd52123e0ab64416909bd30683f3171a6c08ada0b091011b6"

  # s3.amazonaws.com/testmacedownload was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/testmacedownload/TestMace.dmg"
  name "TestMace"
  homepage "https://testmace.com/"

  app "TestMace.app"

  uninstall :delete => [
    '~/Library/Application\ Support/TestMace',
    '~/Library/Application\ Support/com.electron.testmace.plist',
    "~/Library/Logs/TestMace",
  ]
end
