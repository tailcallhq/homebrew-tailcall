class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.38.1/tailcall-x86_64-apple-darwin"
    sha256 "445e307683b880db8b63aa4dca6f51d7a27154228081c18b3f29bbb39b3c7bb1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.38.1/tailcall-aarch64-apple-darwin"
    sha256 "cdba94af0a56acceada3b002edc19394e53b486f15998ff6d07d54399c3ddb71"
  end

  version "v0.38.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
