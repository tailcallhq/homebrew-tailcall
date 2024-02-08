class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.35.3/tailcall-x86_64-apple-darwin"
    sha256 "8b9a9f34b1e0e348c8105fed9c218b399cc0ed5e4d8df7384536f674541b5841"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.35.3/tailcall-aarch64-apple-darwin"
    sha256 "3e0898ff28e252db50389d10bf9bce11047f8c91d593309a7da9d1535972608f"
  end

  version "v0.35.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
