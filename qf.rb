# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qf < Formula
  desc "Example QuickFIX/Go Applications."
  homepage "https://github.com/quickfixgo/examples"
  version "2.0.18"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/quickfixgo/examples/releases/download/v2.0.18/qf_2.0.18_Darwin_x86_64.tar.gz"
      sha256 "e51b7bb1f71597ac0ef20b780f4fa7375204b8e6aa898eaf3ce34c8248c1a549"
    end
    if Hardware::CPU.arm?
      url "https://github.com/quickfixgo/examples/releases/download/v2.0.18/qf_2.0.18_Darwin_arm64.tar.gz"
      sha256 "efedad787f5b10ba875cafabcb9dbe9eecc78889aca5f045c73b7de0b2853152"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/quickfixgo/examples/releases/download/v2.0.18/qf_2.0.18_Linux_x86_64.tar.gz"
      sha256 "56d1cb1b34181c4a401af386b35d2976829789ba30e28ac47ffa738986f72832"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/quickfixgo/examples/releases/download/v2.0.18/qf_2.0.18_Linux_arm64.tar.gz"
      sha256 "03447e7bb903ee586dfc9813c7b7bcab63c7c485e3c77bb69ec8b6ccedbd7779"
    end
  end

  def install
    bin.install "qf"
  end

  def caveats; <<~EOS
    Thanks for installing the Quickfix/Go examples
  EOS
  end

  plist_options :startup => false

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>KeepAlive</key>
    <dict>
      <key>SuccessfulExit</key>
      <false/>
    </dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>RunAtLoad</key>
    <true/>
    <key>WorkingDirectory</key>
    <string>#{var}</string>
    <key>StandardErrorPath</key>
    <string>#{var}/log/qtrn.log</string>
    <key>StandardOutPath</key>
    <string>#{var}/log/qtrn.log</string>
  </dict>
</plist>

  EOS
  end
end
