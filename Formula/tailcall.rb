class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.10.0/tailcall-x86_64-apple-darwin"
    sha256 "df74a1f971aedcbfd206df4b81f7adbb88471dc994c5e1a85f65c3f1c5cd3ffa"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.10.0/tailcall-aarch64-apple-darwin"
    sha256 "20530c75b26c63ab74e342cf3ec15ed469a60e942b018efab152cf584aabd209"
  end

  version "v0.10.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
