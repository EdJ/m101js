name 'M101JS'
maintainer 'Ed Woodcock'
maintainer_email 'edward.woodcock@googlemail.com'
license 'Apache 2.0'
description 'Installs and configures the dependencies for M101JS course.'
version '0.0.1'

%w(amazon centos debian fedora gentoo oracle rhel scientific ubuntu windows).each do |os|
  supports os
end

depends 'build-essential'
depends 'nodejs'
depends 'git'
depends 'mongodb'
