class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.129.1/tailcall-x86_64-apple-darwin"
    sha256 "5e236833cfc06fe6a757e40417cf94f68c3ac3569fb36f3c4d087436447a4f3d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.129.1/tailcall-aarch64-apple-darwin"
    sha256 "c40a8478390b8ba09823ae724488b77470bb6eb42a53debe7f8c13037c9a20b7"
  end

  version "v0.129.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
