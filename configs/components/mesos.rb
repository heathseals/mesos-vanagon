component "mesos" do |pkg, settings, platform|
  pkg.version "0.28.0"
  pkg.md5sum "d8db02af7e5a1ca9aafcbce7019b37e0"
  pkg.url "http://archive.apache.org/dist/mesos/#{pkg.get_version}/mesos-#{pkg.get_version}.tar.gz"

  pkg.build_requires "pl-gcc"
  pkg.build_requires "openjdk-7-jdk"
  pkg.build_requires "python-dev"
  pkg.build_requires "libcurl4-nss-dev"
  pkg.build_requires "libsasl2-dev"
  pkg.build_requires "libsasl2-modules"
  pkg.build_requires "maven"
  pkg.build_requires "libapr1-dev"
  pkg.build_requires "libsvn-dev"

  pkg.configure do
    [ 
      "mkdir build",
      "cd build",
      "CC=/opt/pl-build-tools/bin/gcc \
       CXX=/opt/pl-build-tools/bin/g++ \
       ../configure --prefix=#{settings[:prefix]}"
    ]
  end

  pkg.build do
    [ 
      "cd build",
      "#{platform[:make]} -j$(shell expr $(shell #{platform[:num_cores]}) + 1)"
    ]
  end

  pkg.install do
    [ 
      "cd build",
      "#{platform[:make]} -j$(shell expr $(shell #{platform[:num_cores]}) + 1) install"
    ]
  end
end
