class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.8/tailcall-x86_64-apple-darwin"
    sha256 "ef2ea73f621eff844854f3e80be9c63b441d010199540f0aa12b5c3425f1e9da"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.8/tailcall-aarch64-apple-darwin"
    sha256 "882ec9cb541030e8486bfe22fab50c5223f295b41d68ab1587d2b891b8ead599"
  end

  version "v0.40.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
