class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.28/tailcall-x86_64-apple-darwin"
    sha256 "23ef8ef3e1f035b472dda98183ad338c4e65ec3db556bf5c3d95d0263944be5a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.28/tailcall-aarch64-apple-darwin"
    sha256 "db12646ba7cac9ba995a2bcba8f1f0a9261a3620806c0e987b008de587890514"
  end

  version "v0.99.28"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
