class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.77.0/tailcall-x86_64-apple-darwin"
    sha256 "c97f1095801f33a50e24921ea7414db319c17a0f779ebcd49d54c1293acbf4e9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.77.0/tailcall-aarch64-apple-darwin"
    sha256 "b2e803adc1bcfd6a438da7c037af35f195f7afb1e2f70a200a9bca947341dc53"
  end

  version "v0.77.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
