cask "simparcel" do
  version "1.0.0"
  sha256 "5d3e878098abb3fc21c6f1a92fdb71de1b280b1d68fd6682ad5d956bef80e0be"

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
