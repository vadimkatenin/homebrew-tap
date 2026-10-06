cask "simparcel" do
  version "1.0.1"
  sha256 "a9780b1118ea20e3b45102b3c97facef0a03bf913adf3635a9669bcb20d4e4d1"

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
