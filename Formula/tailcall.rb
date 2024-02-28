class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.9/tailcall-x86_64-apple-darwin"
    sha256 "499fb3be1c6fac1f146c9581e02d7d7b18de8153baa34bbc7fd674f5238cd5e0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.9/tailcall-aarch64-apple-darwin"
    sha256 "81b6debc720425821134d099bc966acd80d18022b67c89be3579519172f79cc2"
  end

  version "v0.40.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
