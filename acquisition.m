function y = acquisition(video)

if ischar(video),
    display(['Loading file ' video]);
    v = VideoReader(video);
else
    v = video;
end

numFrames = v.NumberOfFrames;

display(['Total frames: ' num2str(numFrames)]);

y = zeros(1, numFrames);
for i=1:numFrames,
    display(['Processing ' num2str(i) '/' num2str(numFrames)]);
    frame = read(v, i);
    redPlane = frame(:, :, 1);
    y(i) = sum(sum(redPlane)) / (size(frame, 1) * size(frame, 2));   
end

display('Video signal acquired.');
display(['Sampling rate:' num2str(v.FrameRate)];

end
