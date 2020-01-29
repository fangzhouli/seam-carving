# Seam Carving Algorithm Implementation

## Description

This is a course project of [ECS174 Computer Vision](https://www.cs.ucdavis.edu/blog/ecs-174-introduction-to-computer-vision/) [1], taught by Prof. Yong Jae Lee at University of California, Davis. In this project, we have implemented the good-old seam carving algorithm based on the [paper](http://graphics.cs.cmu.edu/courses/15-463/2013_fall/hw/proj3-seamcarving/imret.pdf) wrote by Avidan and Shamir [2] in MATLAB.

## Results

### Input

![prague](/img/1.jpg)
On the left in the original image, and on the right is the energy of the image. The higher energy indicates the abrupt changing among the surrounding pixels, which is useful to detect the edges

### Cumulative Energy Maps

![cem](/img/2.jpg)
Cumulative energy maps convey the most ideal seam with the least energy. By choosing the least energy seam, it minimized the chance of seams going across many different edges in the image. The left one is the horizontal cummulative energy map, and the right one is the vertical one. Colder color indicates less energy.

### Seam Selection

![cem](/img/3.jpg)
According the cumulative energy maps, the seams are selected. On the left is the best horizontal seam, and on the right is the best vertical seam.

### Seam Carving VS. Resizing

![cem](/img/myOutput_cat.png)

## Reference

- [1] https://www.cs.ucdavis.edu/blog/ecs-174-introduction-to-computer-vision/
- [2] Avidan, Shai and Shamir, Ariel. Seam Carving for Content-Aware Image Resizing. ACM SIGGRAPH 2007 Papers, 10–es