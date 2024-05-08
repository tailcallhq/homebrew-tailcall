class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.12/tailcall-x86_64-apple-darwin"
    sha256 "7b65263fae5fe6480d6aa1b9f7e84caef3bd72e8fd5a691d0b7b8de1bfc7d7c7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.12/tailcall-aarch64-apple-darwin"
    sha256 "debe31bc4ac0a8efa4cfd8710ea73a4161636b684f01743853ff34f6516e9a15"
  end

  version "v0.82.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
