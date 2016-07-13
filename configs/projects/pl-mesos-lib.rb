project "pl-mesos-lib" do |proj|
  proj.setting(:prefix, File.join("/opt", "mesos"))
  proj.setting(:libdir, File.join(proj.prefix, "lib"))

  proj.description "Apache Mesos Libs"
  proj.version "0.28.2"
  proj.release "1"
  proj.license "Apache License, Version 2.0."
  proj.vendor "The Apache Foundation <general@apache.org>"

  proj.requires "libsvn1"
  proj.requires "libapr1"
  proj.requires "libcurl3-nss"

  proj.component "mesos"

  proj.directory proj.libdir
end
