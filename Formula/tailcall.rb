class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.133.3/tailcall-x86_64-apple-darwin"
    sha256 "b24c2d032d7655b65e29908c3cc75f954e1e31bbda7b2d903a6cae70f549ec26"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.133.3/tailcall-aarch64-apple-darwin"
    sha256 "5ccc90f36f04898def63b0e186ce77f11b69a5894ad68366ffa1e8748d6984de"
  end

  version "v0.133.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
