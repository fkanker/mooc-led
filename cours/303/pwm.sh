 #!/bin/bash
pandoc -s --normalize --css ../../statiques/style.css --mathjax -o pwm.html pwm.md
