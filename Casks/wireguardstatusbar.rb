cask 'wireguardstatusbar' do
  version '1.24,117'
  sha256 '725da198b7a2d722e3ea8658745c0bb982d67db496e50d8cf12ed2d81d278d7f'

  url "https://github.com/aequitas/macos-menubar-wireguard/releases/download/#{version.before_comma}/WireGuardStatusbar-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/aequitas/macos-menubar-wireguard/releases'
  name 'WireGuardStatusbar'
  homepage 'https://github.com/aequitas/macos-menubar-wireguard'

  app 'WireGuardStatusbar.app'

  uninstall script: {
                      executable: "#{staged_path}/Uninstall",
                      sudo:       true,
                    }
end
