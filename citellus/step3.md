## Let's fix the issue

First, we'll be installing ntp:

`apt-get -y install ntp`{{execute}}

Now, we need to enable the service so that it's running:

`service ntp start`{{execute}}

Now, let's re-run citellus:

`citellus.py -l -i clock`{{execute}}

So, the problem has been fixed because ntp is now running on the system.

(in real scenario, `ntpd.conf` should be configured against our organization
servers, etc, but for demonstration, we'll be stopping here)
