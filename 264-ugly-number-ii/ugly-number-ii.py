class Solution(object):
    def nthUglyNumber(self, n):
        p2 = p3 = p5 = 0
        ugly = [1]
        for i in range(1,n):
            ugly2 = 2 * ugly[p2]
            ugly3 = 3 * ugly[p3]
            ugly5 = 5 * ugly[p5]
            smallUgly = min(ugly2,ugly3,ugly5)
            ugly.append(smallUgly)
            if smallUgly == ugly2:
                p2 += 1
            if smallUgly == ugly3:
                p3 += 1
            if smallUgly == ugly5:
                p5 += 1
        return ugly[n-1]



        