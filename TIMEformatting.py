# This is a Time formatting python function using only basic data structure operations and split method
def format_duration(num):
	L=['0']*5
	a=''
	b=''
	if num==0:
		return 'now'
	if num // 31536000 == 1:
	  L[0]= str(num // 31536000)+' year'
	  num = num % 31536000
	if num > 31536000:
	  L[0]= str(num // 31536000)+' years'
	  num = num % 31536000
	if num > 86400:
	   L[1]= str(num // 86400)+ ' days'
	   num = num % 86400
	if num // 3600 == 1:
	   L[2]= str(num // 3600)+' hour'
	   num = num % 3600
	if num > 3600:
	   L[2]= str(num // 3600)+' hours'
	   num = num % 3600
	if num // 60 == 1 :
	   L[3]= str(num // 60)+ ' minute'
	   num = num % 60
	if num > 60:
	   L[3]= str(num // 60)+ ' minutes'
	   num = num % 60
	if num == 1 :
	   L[4]= str(num)+ ' second'
	   num=0
	if num != 0:
	   L[4] = str(num) + ' seconds'
	for i in range (5):
		if L[i] != '0':
			a+= L[i]+','
	L2=a.split(',')
	if len(L2) <= 2 :
		return L2[0]
	for i in range (len(L2)-2):
		b+=L2[i] + ', '
