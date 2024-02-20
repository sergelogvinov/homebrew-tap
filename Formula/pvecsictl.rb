# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pvecsictl < Formula
  desc "Proxmox VE CSI Mutate tool"
  homepage "https://github.com/sergelogvinov/proxmox-csi-plugin"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sergelogvinov/proxmox-csi-plugin/releases/download/v0.5.0/pvecsictl-darwin-arm64"
      sha256 "87d778f053b288cc11a0cba3ab795f0d3ff78dcf1feae702d507f8543f86865a"

      def install
        bin.install "pvecsictl-darwin-arm64" => "pvecsictl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sergelogvinov/proxmox-csi-plugin/releases/download/v0.5.0/pvecsictl-darwin-amd64"
      sha256 "06e8ade4770f963a446fab4be969da072c7b18808fd1ebcba4dbcfe350596c09"

      def install
        bin.install "pvecsictl-darwin-amd64" => "pvecsictl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sergelogvinov/proxmox-csi-plugin/releases/download/v0.5.0/pvecsictl-linux-amd64"
      sha256 "419eb789d8cc46fc8d790633ffc9e298fd946c7ee0dfe8c027c8dd1f526286ba"

      def install
        bin.install "pvecsictl-linux-amd64" => "pvecsictl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sergelogvinov/proxmox-csi-plugin/releases/download/v0.5.0/pvecsictl-linux-arm64"
      sha256 "cbc6765da682f1388b0e996a77c3bf7df0720df140deba90d5123c2ad305cc75"

      def install
        bin.install "pvecsictl-linux-arm64" => "pvecsictl"
      end
    end
  end

  test do
    system "#{bin}/pvecsictl -v"
  end
end