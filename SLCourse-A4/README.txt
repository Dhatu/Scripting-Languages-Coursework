Sudhin Bhargava Domala
110475495
Window 10 (used allv server given)

This is the answers text about the remaining word questions of the Assignment pdf.

allv22.all.cs.stonybrook.edu
sdomala
CS74DErv

1
a)
	i)ubuntu
	ii)tcsh
	iii)bash
	iv)exit
c)
	i)http://man7.org/linux/man-pages/man1/cal.1.html
	ii)cal 12 4 2020  #April 12th
	iii)cal -3 -A 3
	iv)cal -A -8 2020 -w
b)
	i)less /etc/cron.daily/apt-compat
	ii)space to next page
	iii)b to back one page
	iv)Q to quit
d)
	i) cat > 337A4ans.txt
	ii)https://www.computerhope.com/unix/wget.htm
	iii)wget https://www.google.com -O googleindex.html
	
e)
	i)ls $PWD/337A4ans.txt ==>  /home/cou/cse337/students/sdomala/337A4ans.txt
	ii)/home
	
2)
a)
	i)cd from home to my home directory
	ii) mkdir A4A4
	iii) touch myfileA4
	iii) in A4A4 subdirectory: ls -l 
			total 0
			-rw-r--r-- 1 sdomala systemd-resolve 0 May 10 13:31 myfileA4
		in sdomala subdirectory: ls -la
			...
			drwxr-xr-x  2 sdomala systemd-resolve  4096 May 10 13:31 A4A4
			...
	iv) every 3 characters are for one set of permissions (owner,group owners, and others)
		so format will respectively be ow:---  group: --- others: --- 
		
		for myfileA4: 
			-: first dash defines as a regular file 
			ow: rw-   ==> owner has read writable permissions
			group: r-- ==> group only have read permissions
			others: r-- ==> others only have read permissions
		
		for A4A4 subdirectory: 
			d: first dash defines as a directory
			ow: rwx   ==> owner has read writable and excuete permissions
			group: r-x ==> group only have read and excuete permissions
			others: r-x ==> others only have read and excuete permissions
	
b)	ii)cp myfileA4 copyfileA4
		==> in ls command of A4A4 outputs "myfileA4 & copyfileA4"
	iii) rm myfileA4
		==> in ls command of A4A4 outputs "copyfileA4"
	iv) mkdir dirA4
		==> in ls command of A4A4 outputs "myfileA4 & dirA4"

c)	ii) chmod u=-wx A4A4
		==> in ls command of A4A4 outputs "ls: cannot open directory 'A4A4': Permission denied"
		
		"On a directory, execute without read means you can traverse the directory, 
		but not list it or do anything else with its contents."
	iii)No

d)  ii) cp -r A4A4 cloneA4
		cp is the command to copy files/directories while -r make sure all the contents of a directory
		is also copied to new destination source.
		
		in sdomala subdirectory: ls -la
			...
			drwxr-xr-x  3 sdomala systemd-resolve  4096 May 10 13:55 A4A4
			drwxr-xr-x  3 sdomala systemd-resolve  4096 May 10 14:30 cloneA4
			...
		==> ls cloneA4 outputs "copyfileA4  dirA4"
	iii)
	 mv googleindex.html cloneA4 
		==> ls cloneA4 outputs "copyfileA4  dirA4  googleindex.html"

e)	i) rm -rf /home/cou/cse337/students/sdomala/A4A4/*
	ii) ls A4A4 outputs nothing
	iii) rm -r A4A4

3)
	a) cat *.log.1 *.log | grep " error" | tee e1 e2 | wc -l
		catunate all of { 
			*.log.1 *.log => all(*) files ending in .log.1 and .log                               
			| => pipes to the next expression (STNOUT of *.log.1 *.log => STDIN of next)
			grep " error" ==> selects line that contrain the word "error"
			| => pipes to the next expression (STNOUT of grep " error" => STDIN of next)
			tee e1 e2 => read from STDIN and write STNOUT to both e1 and e2
			| => pipes to the next expression (STNOUT of tee e1 e2 => STDIN of next)
			wc -l print line count
			}
	b)  find /var/log -type f -cmin -80 2> logerror.txt
		
	c) i)  ls -l /usr/share/man/man1 | wc -l  ==> 1776 entries
	
	   ii) ls -lR /usr/share/man/man1 | grep ^l | wc -l ==> 254 Symbolic links
		   "------------------------------------" => this section traverses the directory (and lists only sls)
		   "------------------------------------" gets the line count
	
	d) i)  wc -wl /usr/share/dict/words => 99171 words and 99171 lines 
	   ii) 1 word per line
	   iii) cat > 800w.txt in A4temp 
			sed -n '1000,1800p;1801q' /usr/share/dict/words > 800w.txt
			sed has the property p to output certain range given in those paramters and has q to quit the range of text output
			> directs the output to be input for 800w.txt
	