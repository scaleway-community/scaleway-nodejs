'''
Copyright (C) 2017 Scaleway. All rights reserved.
Use of this source code is governed by a MIT-style
license that can be found in the LICENSE file.
'''


def test_node_version(host):
    res = host.run('/usr/bin/node --version')
    assert res.stdout.startswith('v9.')
