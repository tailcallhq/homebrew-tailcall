class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.1/tailcall-x86_64-apple-darwin"
    sha256 "4dc5bcf38ec31952a5d022e2761e7753c743e09a959db4249784eef357a11c70"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.1/tailcall-aarch64-apple-darwin"
    sha256 "d3f05da137a0e54d7d3158a830f056733dff04c99264559217eaccbbea92ea60"
  end

  version "v1.6.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
