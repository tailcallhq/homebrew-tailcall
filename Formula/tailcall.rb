class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.55.0/tailcall-x86_64-apple-darwin"
    sha256 "ce9473763830c3599c5c20c8a96aa977870d2190f8920ac86c66327516d77841"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.55.0/tailcall-aarch64-apple-darwin"
    sha256 "f585eef7b10df7f8fbf08c755d1189d78c69cb971fe529e4697f0945425f3ca4"
  end

  version "v0.55.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
