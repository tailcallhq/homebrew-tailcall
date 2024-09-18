class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.112.1/tailcall-x86_64-apple-darwin"
    sha256 "62d4f78627db49f8ae165c45f4e22158b564d571d27863893cc0d5e867095a9c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.112.1/tailcall-aarch64-apple-darwin"
    sha256 "ddc563e97ef0f8c011ba3032eae0d9edb0f6aa357ec1f7d123e2cb21ed026f04"
  end

  version "v0.112.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
