# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

require "json"

package = JSON.parse(File.read(File.join(__dir__, "..", "..", "package.json")))
version = package['version']

source = { :git => 'https://github.com/BhavikBhatt/innerfence-ios.git' }
if version == '1000.0.0'
  # This is an unpublished version, use the latest commit hash of the react-native repo, which we’re presumably in.
  source[:commit] = `git rev-parse HEAD`.strip
else
  source[:tag] = "v#{version}"
end

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
folly_version = '2020.01.13.00'
boost_compiler_flags = '-Wno-documentation'

Pod::Spec.new do |s|
  s.name                   = "RNInnerfence"
  s.version                = version
  s.summary                = "-"  # TODO
  s.homepage               = "n/a"
  s.license                = package["license"]
  s.author                 = "Bhavik"
  s.platforms              = { :ios => "10.0", :tvos => "10.0" }
  s.source                 = source
  s.source_files           = "**/*.{cpp,h}"
  s.header_dir             = "hungry-inner-fence"
end