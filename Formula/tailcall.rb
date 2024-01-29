class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.25.2/tailcall-x86_64-apple-darwin"
    sha256 "fcdcaec309cce67aac55da92b2656ec2277a1306b8c619d27a3a33386a928b58"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.25.2/tailcall-aarch64-apple-darwin"
    sha256 "527b5630b41f34c80837ec5918ae7fc426ece1e3b58d974349eea93d79d35f94"
  end

  version "v0.25.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
