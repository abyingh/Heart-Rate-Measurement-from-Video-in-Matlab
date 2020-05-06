This project is a video processing project. A video of your fingertip captured by a smartphone is utilized to measure your heart rate from the change in color in the video through blood flow. Your fingertip must cover the lens all the way, and it's sensitive to the press and the light; therefore you must be gentle and flashlight must be turned on for a better illumination.

**In the 1st MATLAB script ```acquisition```**
  1. Video captured is read.
  2. Brightness of the video signal is computed in only red plane. *(since majority of images are in red plane, green and blue skipped for computational inexpensiveness.)*
  
**In the 2nd MATLAB script ```processing```**
  1. A bandpass filter is designed to filter frequencies outside the interest band.
  2. Fast Fourier Transform is implemented. *(6 second windows with 0.5 second overlap)*
  3. Peak detection
  4. Signal smoothing
  5. Increasing the signal to noise ratio for better accuracy
