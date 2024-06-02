class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.85.2/tailcall-x86_64-apple-darwin"
    sha256 "b9381679dfdc0ef192690e7370e42411ba25c1587b269bda49a9bd4364858a89"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.85.2/tailcall-aarch64-apple-darwin"
    sha256 "f3dda87eaf5e8e870e57455922b10e6f430d7452697df651f88aeafe6966da03"
  end

  version "v0.85.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
