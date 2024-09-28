class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.115.5/tailcall-x86_64-apple-darwin"
    sha256 "31e4b6f69feb1bd60d99db443fe5176268ae2f50166b0f36dd0a6bb312ce33b8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.115.5/tailcall-aarch64-apple-darwin"
    sha256 "8e5a51fe1c1ae389dfd009c795cf531ca74c94ecd561e8e8ced20a2d0d85d464"
  end

  version "v0.115.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
