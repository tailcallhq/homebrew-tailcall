class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.70.2/tailcall-x86_64-apple-darwin"
    sha256 "3ff8b7062a54ef646b8caaa651c6d6609aafb6da55fdbea97cbce52020eb4747"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.70.2/tailcall-aarch64-apple-darwin"
    sha256 "eb2691770c1e0926d0fb41b1525250e387cae4c6b6e737b2db158927f753367d"
  end

  version "v0.70.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
