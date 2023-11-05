class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.12/tailcall-x86_64-apple-darwin"
    sha256 "67fc13789b9c3c940e5ea5fe446002ccaab7e9b7fa6eb3d186c9b4851a89d1cf"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.12/tailcall-aarch64-apple-darwin"
    sha256 "dbf4e4de2ae8ad7fed3370f4cb5103f8e59598adb848bae70b846179ee0fe2dc"
  end

  version "v0.14.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
