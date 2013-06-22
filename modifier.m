%Remove confusions between O,C,S,1,r and o,c,s,i,t
load confusionM.mat;

%Capital and Small confusions.
for i=1:size(confusionB,1)
    label=confusionB(i,1);
    dif=[];diffAr=[];
    
    temp=find(p(:,1)==label);

    for j=1:size(temp,1)
        orgW=p(temp(j,1),3);
        orgH=p(temp(j,1),4);
        preH=orgW/confusionB(i,4);
        dif=[dif; preH-orgH];
        diffAr=[diffAr;(confusionB(i,4)-p(temp(j,1),5))];
    end

    temp=[temp dif diffAr];
    
    len=size(temp,1);
    sum=0;

    for m=1:len
        sum=sum+temp(m,2);
    end
    avg=sum/len;

    for l=1:len
        if temp(l,2)>=avg-3 && temp(l,2)<=avg+3
            if i<=3
                p(temp(l,1))=p(temp(l,1))+26;
            else
                p(temp(l,1))=44;
            end
        end
    end
    
end

label=confusionS(1,1);
dif=[];diffAr=[];

temp=find(p(:,1)==label);

for j=1:size(temp,1)
    orgW=p(temp(j,1),3);
    orgH=p(temp(j,1),4);
    preH=orgW/confusionS(1,4);
    dif=[dif; preH-orgH];
    diffAr=[diffAr;(confusionS(1,4)-p(temp(j,1),5))];
end

temp=[temp dif diffAr];
    
len=size(temp,1);
sum=0;

for m=1:len
    sum=sum+temp(m,2);
end
avg=sum/len;

for l=1:len
    if temp(l,2)>=avg+1 && temp(l,2)<=max(temp(:,2))
       p(temp(l,1))=55;
    
    end      
end

