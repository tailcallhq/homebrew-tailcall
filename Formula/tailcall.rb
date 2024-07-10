class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.18/tailcall-x86_64-apple-darwin"
    sha256 "761eac830bbb648f3a8291d5fc824f81cf021fb3da1df955868908d84ea852a6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.18/tailcall-aarch64-apple-darwin"
    sha256 "306065772793de9a9c2dfdd4a92bc595f4ea9a53de4675658c7dcb5b9b19cd3a"
  end

  version "v0.95.18"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
