class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.65.0/tailcall-x86_64-apple-darwin"
    sha256 "0e1b1e3655bdeb23e5030f442fc0e54808715e5a45eb840235a1678abc311842"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.65.0/tailcall-aarch64-apple-darwin"
    sha256 "06b8dae53eb9611b91a6f22420899606f78a969210868bc69c2009e2692f8638"
  end

  version "v0.65.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
