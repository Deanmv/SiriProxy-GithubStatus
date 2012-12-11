SiriProxy Github Status
==================================

This repo is a plugin for [SiriProxy] (https://github.com/plamoni/SiriProxy) that will let the user check the current status of GitHub using it's status API.

Installation
------------

First you will need to install Siri Proxy and when up and running drop this plugin into your Siri Proxy Plug-ins, e.g:

`~/SiriProxy/plugins/`

Drop this into your `~/.siriproxy/config.yml` file:

	- name: 'Git'
	  git: 'git://github.com/Deanmv/SiriProxy-GithubStatus.git'

Then rebundle siriproxy and you are off!

Commands
--------

'The hubs current status'

Will return the current status of GitHub according to the API.

'The hubs last update'

Will return the time that the last status update was posted according to the API.

'The hubs last message'

Will return the last human communication into the status API, including: the message they entered, the status that it was then and the time that was.


Legal Bits
----------

Copyright (c) 2012, Dean Vizer

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.