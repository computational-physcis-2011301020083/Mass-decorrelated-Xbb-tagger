import os

txtfile="scpHbb.sh"
record=open(txtfile,"a")
line="#1/user/bin/expect -f\n"
record.write(line)
#record.close()
dijetdir="/eos/user/d/ding/Xbb0116/DataVRGhost/Hbb/"
filelist=[]
for i in os.listdir(dijetdir):
  filelist.append(dijetdir+i)
print len(filelist)
a='"'+'password'+r'\n'+'"'
for i in filelist:
  line1="spawn scp ding@lxplus.cern.ch:"+i+" ."+"\n"
  line2='expect "Password:"'+'\n'
  line3='send -- '+a+'\n'
  line4="interact"+"\n"
  line5="      \n"
  record.write(line1)
  record.write(line2)
  record.write(line3)
  record.write(line4)
  record.write(line5)
record.close()
