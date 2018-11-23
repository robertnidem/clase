def llenar(n):
	for i in range(0,n+1):
		r.append(0)


def sumar(n):
	for i in range(n,-2,-1):
		r[i]=r[i]+a[i]+b[i]
		if r[i]>=10:
			r[i]=r[i]-10
			r[i-1]=1


	pass


a=[5,6,3]
b=[8,4,2]
n=len(a)
m=len(b)
r=[]
if n>m:

	print 1

elif n<m:
	print 2

else: 
	print 3
	print n
	llenar(n)