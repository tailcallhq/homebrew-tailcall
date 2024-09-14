class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.7/tailcall-x86_64-apple-darwin"
    sha256 "b4e31b3dd28202f56af3d00966c77d0725664b33306b561e89da09d8f1bbdba1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.7/tailcall-aarch64-apple-darwin"
    sha256 "b1e1f677e7fe2733ce2fc2c38b4babdaf8249fe1205d8eb170d6cce19ccb5131"
  end

  version "v0.111.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
