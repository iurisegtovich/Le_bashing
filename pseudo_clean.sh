{ \
	for d in */ ; do \
		n="n"
		#touch prevents error for non existence
		touch $d$n.o
		for f in $d*.o; do \
#			renames every file, appending "~", as is the default automatic files backuo
			mv -f $f $f~;\
		done;\
		touch $d$n.a
		for f in $d*.a; do \
			mv -f $f $f~;\
		done;\
		touch $d$n.so
		for f in $d*.so; do \
			mv -f $f $f~;\
		done;\
	done;\
	}
