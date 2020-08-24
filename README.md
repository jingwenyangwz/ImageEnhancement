# ImageEnhancement
Implement Wallis operator, Anisotropic diffusion, Median filter to enhance the images


- Part 1: Wallis operator
  - the local mean and local contrast of your image to be forced toward predefined values
	- run test1.m to compute local mean, run test2.m to compute local contrast
	- run test3.m to apply the wallis operator
- Part 2: Anisotropic diffusion (Perona-Malik diffusion)
	- allows blurring (noise filtering) in directions with low gradient value, but penalizes diffusion orthogonal to the edge direction
	- run test6.m to apply Anisotropic diffusion
- Part 3: Median filter
	- remove salt & pepper noise
	- run test7.m to apply median filter
