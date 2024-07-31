class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.12/tailcall-x86_64-apple-darwin"
    sha256 "34a0600dafd4b98693d5497e1fd9e9e324089efa4e894a1e2ccf553394a75336"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.12/tailcall-aarch64-apple-darwin"
    sha256 "08906867f33d9782c5bf17b3d6b30824f65fc39355ceefc614130a465458ba07"
  end

  version "v0.99.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
