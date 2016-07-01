project "pl-mesos-lib" do |proj|
  proj.setting(:prefix, File.join("/opt", "mesos"))
  proj.setting(:libdir, File.join(proj.prefix, "lib"))

  proj.description "Apache Mesos Libs"
  proj.version "0.28.0"
  proj.license "Apache License, Version 2.0."
  proj.vendor "Heath Seals <heath@nodata.org>"

  proj.component "mesos"

  proj.directory proj.libdir
end
