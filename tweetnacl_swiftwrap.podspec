Pod::Spec.new do |spec|
  spec.name = "TweetNacl"
  spec.version = "0.0.2"
  spec.summary = "TweetNacl wrapper library written on Swift."
  spec.homepage = "https://github.com/bitmark-inc/bitmark-lib-swift"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Bitmark Inc" => 'support@bitmark.com' }
  spec.social_media_url = "https://twitter.com/bitmarkinc"

  spec.platform = :ios, "9.1"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/bitmark-inc/tweetnacl-swiftwrap.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "TweetnaclSwift/**/*.{h,swift}"
  spec.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/TweetnaclSwift/Dependencies' }
  spec.preserve_paths = '/TweetnaclSwift/Dependencies/module.map'

  spec.dependency "BigInt", "~> 2.1"
  spec.dependency "CryptoSwift"
end
