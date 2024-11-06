#Macro to measure Spheroid Morphology with ImageJ
#Based on the following scientific article: https://www.sciencedirect.com/science/article/abs/pii/S0169260720316709

#macro starts here:

run("Gaussian Blur...", "sigma=3");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Convert to Mask");
run("Set Measurements...", "area mean min shape display redirect=None decimal=3");
run("Analyze Particles...", "size=8000-Infinity show=Outlines display composite");
close();
