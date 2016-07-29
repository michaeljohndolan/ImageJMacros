//Simple code to adjust two channel images (in particular the lexA data) for manual annotation
macro "LexA_easyopen [j]" {
	
	run("Make Composite");
	setSlice(100);
	Stack.setChannel(1)
	resetMinAndMax();
	Stack.setChannel(2);
	resetMinAndMax();
	run("In [+]");
	setSlice(1);
	run("Rotate... ", "angle=-40 grid=1 interpolation=Bilinear");
}