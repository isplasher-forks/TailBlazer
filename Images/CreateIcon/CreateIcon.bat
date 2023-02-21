:: Q:\Test\2019\01\15\SO_1394446.cmd
@Echo off&SetLocal EnableDelayedExpansion

Set inkscape="C:\Program Files\Inkscape\bin\inkscape.com"
Set magick="C:\Program Files\ImageMagick-7.1.0-Q16-HDRI\magick.exe"
Set fileName="CometBlue"

%inkscape% -w 256 -h 256 %fileName%.svg -o %fileName%256.png
%inkscape% -w 128 -h 128 %fileName%.svg -o %fileName%128.png
%inkscape% -w 64 -h 64 %fileName%.svg -o %fileName%64.png
%inkscape% -w 48 -h 48 %fileName%.svg -o %fileName%48.png
%inkscape% -w 32 -h 32 %fileName%.svg -o %fileName%32.png
%inkscape% -w 24 -h 24 %fileName%.svg -o %fileName%24.png
%inkscape% -w 16 -h 16 %fileName%.svg -o %fileName%16.png


     

    %magick% convert %fileName%16.png ^
                     %fileName%24.png ^
                     %fileName%32.png ^
                     %fileName%64.png ^
                     %fileName%128.png ^
                     %fileName%256.png tailblazer.ico
