import sys, os
sys.path.insert (0,'/var/www/catalog')
os.chdir("/var/www/catalog")

from catalog import app as application
