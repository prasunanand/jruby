# Copyright (c) 2016 Oracle and/or its affiliates. All rights reserved. This
# code is released under a tri EPL/GPL/LGPL license. You can use it,
# redistribute it and/or modify it under the terms of the:
#
# Eclipse Public License version 1.0
# GNU General Public License version 2
# GNU Lesser General Public License version 2.1

unless Truffle::Interop.mime_type_supported?('application/javascript')
  abort 'JavaScript doesn\'t appear to be available - skipping JavaScript test'
end

if Truffle::Interop.eval('application/javascript', '14 + 2') != 16
  abort 'result not as expected'
end
