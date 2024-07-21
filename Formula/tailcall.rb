class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.16/tailcall-x86_64-apple-darwin"
    sha256 "869f171c6018f20a517dd172455e0918e22c2ff523455147569c6832ad44c4e8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.16/tailcall-aarch64-apple-darwin"
    sha256 "679f05239788eb45e94061708f95ac7814826f862afb1aafcfea05b964cda49d"
  end

  version "v0.96.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
