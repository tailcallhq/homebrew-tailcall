class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.14/tailcall-x86_64-apple-darwin"
    sha256 "5e05898a12c9c86f72e5776339dbfc83de2cbad5b83705bbcccbfdb70e87248c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.14/tailcall-aarch64-apple-darwin"
    sha256 "14e52af1f76cb44558e43c68448ff829a37017843ee6bb88f18b193a19b5c9dc"
  end

  version "v0.96.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
