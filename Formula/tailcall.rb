class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.21.2/tailcall-x86_64-apple-darwin"
    sha256 "f5f3bfcfe30ed6cb53c8ec56e8210a9e1e9b75bac87d46de5d769a573729dab0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.21.2/tailcall-aarch64-apple-darwin"
    sha256 "2197145f11cdf493c5057acc80940d4ea211b8ab983f4ed0d43fc4f05f1204d9"
  end

  version "v0.21.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
