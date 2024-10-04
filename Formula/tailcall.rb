class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.118.1/tailcall-x86_64-apple-darwin"
    sha256 "6deedf3e98661097874daf3b95d8ccc6621c4d4cb7e6e6f701c2a22bbf831987"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.118.1/tailcall-aarch64-apple-darwin"
    sha256 "78cbc28aef11e1849d9b9684a9d3ce9dde415413dab94b4d4be4f6313c9f9a53"
  end

  version "v0.118.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
