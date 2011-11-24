maintainer        "Evrone, Inc."
maintainer_email  "cookbooks@evrone.com"
license           "Apache 2.0"
description       "Installs git and/or sets up a Git server daemon"
version           "0.0.1"
recipe            "git", "Installs git"

%w{ ubuntu debian }.each do |os|
  supports os
end
