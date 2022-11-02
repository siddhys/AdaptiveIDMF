# AdaptiveIDMF
Implementation of IDMF and Adaptive IDMF using optical flow
  
A. Before running the IDMF and Adaptive IDMF, run the startscript. 

B. Before running Adaptive IDMF, also execute the hyperpred file to generate the required initial hyperparameter values.

C. For editing the environment the following steps can be implemented.
1. open the 3D world editor.
2. For changing the height of the landing pad;
  1. Open Landing_Platform > children > Landing_Block > children > shape > geometry > Cylinder > height
  2. Open Landing_Platform > children > Helipad > translation (y coord)
3. For changing the image of the landing marker;
  1. Open Landing_Platform > children > Landing_Block > children > shape > appearance > Appearance > texture > image > url
