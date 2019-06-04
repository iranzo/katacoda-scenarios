For this demonstration, we'll be using 'pip' to install Citellus

## Prepare pip on the environment

Enable `pip` on the environment (<https://pip.pypa.io/en/stable/installing/>):


First, download installer:

`curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py`{{execute}}

Now, execute installer

`python3 get-pip.py`{{execute}}

## Set locale to UTF-8

To avoid issues, let's set the environment to support UTF-8:

´export LC_ALL=C.UTF-8
export LANG=C.UTF-8`{{execute}}

## Install citellus

Let's install citellus

`pip install citellus`
