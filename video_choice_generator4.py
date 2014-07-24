#!/usr/bin/env python

import random
from datetime import datetime
import copy
import numpy as np
import cPickle as pickle

#import choice
#import weightedpick

skala=364*24*3600
multiple_of = range(100000)
interval = (24*3600) 
counter = 0
magic_number_1 = 364
video_id = range(10000)
dict_for_resume={}
results_p = {}
TIMELINE_LENGTH = 1*3600

#ujung=364*10000
#step=364
#temp = np.arange(0,ujung,step) #array utk posisi 
#tambah = np.arange(1,2,1)

cview=0
rview=0
content_id=0

if __name__ == '__main__':
    #baca file dari flat-table utk pdf
    print 'loading catalog pdf file'
    pdfl = np.loadtxt('pdfmulti.dat')
    print 'finish loading catalog file'

    print 'loading catalog cdf file'
    cdfl = np.loadtxt('cdfmulti.dat')
    print 'finish loading catalog file'

    print 'loading catalog terminus file'
    terminusl = np.loadtxt('terminusmulti.dat')
    print 'finish loading catalog file'

    jumlahvideo = 10000
    

    def weightedpick(d):
        r = random.uniform(0, sum(d.itervalues()))
        s = 0.0
        for k, w in d.iteritems():
            s += w
            if r < s: return k
        return k

    
    fd=open('daftarvideochoice.pickle','wb')
    pilihan=[]
    awal=str(datetime.now())
    print awal
    while counter < skala:
        if  counter >= multiple_of[0]*interval:
            selang=multiple_of[0]
            view_count_t = cdfl[selang] * terminusl[selang]
            view_rate_t = pdfl[selang] * terminusl[selang]
            cview=7*np.uint16(view_count_t)
            rview=3*np.uint16(view_rate_t)
            newvalue=cview+rview
            dict_for_resume=dict(zip(video_id,newvalue))


            #for i in range(jumlahvideo):
            #    selang=multiple_of[0]
            #    view_count_t = cdfl[selang][i] * terminusl[selang][i]
            #    view_rate_t = pdfl[selang][i]  * terminusl[selang][i]
            #    cview = (7*view_count_t)
            #    rview = (3*view_rate_t)
            #    newvalue = int(cview+rview)
            #    dict_for_resume[i] = newvalue

            p = weightedpick(dict_for_resume)
            content_id = copy.deepcopy(p)
            results_p[p] = results_p.get(p, 0) + 1
            pilihan.append(content_id)

        if counter > (interval)*(multiple_of[0]+1):
            multiple_of.pop(0) 

        if (counter%TIMELINE_LENGTH)==TIMELINE_LENGTH-1:
            print 'jam ke: ', counter//3600, str(datetime.now())

        counter+=1
    print results_p
    print awal, str(datetime.now())
    pickle.dump(pilihan,fd,-1)
    fd.close()
