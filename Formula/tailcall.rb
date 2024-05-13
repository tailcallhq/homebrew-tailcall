class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.17/tailcall-x86_64-apple-darwin"
    sha256 "57e5dd9a4e51d2e717165b8216b3bdc539c87abbad64c0f238da61bed99feba4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.17/tailcall-aarch64-apple-darwin"
    sha256 "3901c536110eb3faccc868d7acbcb0db224d817a4a1dbf6347d2c1850ddbd609"
  end

  version "v0.82.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
