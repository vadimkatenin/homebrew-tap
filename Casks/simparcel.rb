cask "simparcel" do
  version "1.0.2"
  sha256 "9b3e85d22bce81afb04829ab3a9eeb72663f78097141d25a2d774120731f86df"

  url "https://github.com/vadimkatenin/SimParcel/releases/download/v#{version}/SimParcel-#{version}.zip"
  name "SimParcel"
  desc "Drag and drop media, apps and push payloads into iOS Simulators"
  homepage "https://github.com/vadimkatenin/SimParcel"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SimParcel.app"

  zap trash: [
    "~/Library/Caches/com.vadimkatenin.SimParcel",
    "~/Library/HTTPStorages/com.vadimkatenin.SimParcel",
    "~/Library/Preferences/com.vadimkatenin.SimParcel.plist",
  ]
end
