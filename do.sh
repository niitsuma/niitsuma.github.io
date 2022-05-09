
for f in $( ls *.org); do
    echo  $f
    ##echo ${txt}  `cat $txt | wc -l`
    #emacs $f --batch -f org-html-export-to-html --kill
    emacs $f --batch -l ~/.emacs.d/config/builtins/org-html.el  -f org-html-export-to-html --kill

    emacs $f --batch -l ~/.emacs.d/config/builtins/org-html.el  -f org-babel-tangle        --kill
    
    ## https://org-technology.com/posts/Nikola-org-ditaa.html
    #emacs -batch -l ~/.emacs.d/init.el 2>&1
done

cd j
for f in $( ls *.org); do
    echo  $f
    ##echo ${txt}  `cat $txt | wc -l`
    #emacs $f --batch -f org-html-export-to-html --kill
    emacs $f --batch -l ~/.emacs.d/config/builtins/org-html.el  -f org-html-export-to-html --kill

    emacs $f --batch -l ~/.emacs.d/config/builtins/org-html.el  -f org-babel-tangle        --kill
    
    ## https://org-technology.com/posts/Nikola-org-ditaa.html
    #emacs -batch -l ~/.emacs.d/init.el 2>&1
done
