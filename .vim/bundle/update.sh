 #!/bin/bash
 for i in * ; do if [ -d $i ]; then cd $i; git pull; cd - ; fi ; done
