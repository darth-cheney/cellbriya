I am a vector representation of a velocity. I contain a time value (in milliseconds) that indicates
how many abstract units -- here denoted by magnitude or speed -- I move, such that 
I equal magnitude per time or m/t. Therefore if we consider the magnitude a meter and time is
a second, I would be meters/1000 or meters per second.

I also respond to message atTime: which will respond with an x@y pair along the vector at a specified time in milliseconds. This can be used to determine a point along the vector at some value greater or less than my time setting.