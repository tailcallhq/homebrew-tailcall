class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.85.7/tailcall-x86_64-apple-darwin"
    sha256 "c46465d79edd97f19b6db4762745a0f8a9d24ac56fe5ffcb6c55291ad672f95b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.85.7/tailcall-aarch64-apple-darwin"
    sha256 "dc298b4eacd83f89579a4381e01a3031d25e71b71bd933d0f84e5d3d12c1bb57"
  end

  version "v0.85.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
