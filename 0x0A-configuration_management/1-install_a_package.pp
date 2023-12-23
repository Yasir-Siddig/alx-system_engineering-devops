#!/usr/bin/pup
# Install an especific version of flask (2.1.0)
package {'python3.8':
  ensure   => '3.8.10',
  }
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
  require => package ['python3-pip']
}
package {'python3-pip':
  ensure   => present,
  }

package {'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip'
  require => package ['python3-pip']
}
