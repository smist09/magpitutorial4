/*
 * main.c
 * 
 * C main program to test the
 * assembly language distance function.
 *
 */


#include <stdio.h>

extern double distance(double *point);

int main()
{
	double point1[] = {0.0, 0.0, 3.0, 4.0};
	double point2[] = {1.4, -2.4, 4.6, 1.2};
	double dist;
	
	dist = distance(point1);
	printf("Distance between (%.1f, %.1f) and (%.1f, %.1f) is %f\r\n",
		point1[0], point1[1], point1[2], point1[3], dist);
	dist = distance(point2);
	printf("Distance between (%.1f, %.1f) and (%.1f, %.1f) is %f\r\n",
		point2[0], point2[1], point2[2], point2[3], dist);
	
	return 0;
}

