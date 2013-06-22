function mat = binresz( image )
%This function takes a binary letter image where letter is black coloured
%and background is white. It resizes the image to 32 x 32 pixel image.

%   The greater of row or column is first resized to 32 and the another in
%   same ratio.Then white columns or rows are added on both side of lesser
%   dimension to make the image 32 x 32.

%%
%***********************************************************************%
%                             Written By                                %
%                         ABHISHEK SRIVASTAVA                           %
%                             IIT KANPUR                                %
%***********************************************************************%


%% 
ind2 = size(image,2);
img = image;							%IMAGE/PART OF IMAGE AS INPUT
border = find(sum(img,2)~=ind2);

%% FIND THE LOCATION OF UPPER AND LOWER POINTS
ni = image(border(1):border(length(border)),:);

%% RESIZING AND ADDING REQUIRED NO OF ROWS / COLUMNS	
if size(ni,1) == size(ni,2)
    mat = imresize(ni,[32 32]);
elseif size(ni,1) > size(ni,2)
    ni1 = imresize(ni,32/size(ni,1));
    a = round((32-size(ni1,2))/2);
    locmat1 = ones(32,a);
    locmat2 = ones(32,32-size(ni1,2)-a);
    mat = [locmat1 ni1 locmat2];
else
    ni1 = imresize(ni,32/size(ni,2));
    a = round((32-size(ni1,1))/2);
    locmat1 = ones(a,32);
    locmat2 = ones(32-size(ni1,1)-a,32);
    mat = [locmat1;ni1;locmat2];
end

end
