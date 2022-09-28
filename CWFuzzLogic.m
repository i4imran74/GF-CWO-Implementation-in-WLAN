function [CW]=CWFuzzLogic(iSr,iNr)
%clc;
% iSr
% iNr
iSrVal=[0:0.2:1]; %0   0.2   0.4   0.6  0.8   1.0 [VL, L, M H VH]=[0-0.2 0.2-0.4 0.4-0.6 0.6-0.8 0.8-1.0]
iNrVal=[1:1:6];   %1     2     3     4     5     6 [S M LA] = [ 1-3 2-4 3-6]
CWs=[116:-8:4]; %116   108   100    92    84    76    68    60    52    44    36    28    20    12     4
CWMat=reshape(CWs,3,5);
if(iSr>=iSrVal(1) && iSr<=iSrVal(2))
    cCW=1;
elseif (iSr>iSrVal(2) && iSr<=iSrVal(3))
    cCW=2;
elseif (iSr>iSrVal(3) && iSr<=iSrVal(4))
    cCW=3;    
elseif (iSr>iSrVal(4) && iSr<=iSrVal(5))
    cCW=4;    
elseif (iSr>iSrVal(5) && iSr<=iSrVal(6))
    cCW=5;    
elseif iSr>iSrVal(6)
    cCW=5;   
else
    if iSr<0 
        cCW=1;
    end
    if iSr>1
        cCW=5;
    end
end
if(iNr>=iNrVal(1) && iNr<=iNrVal(3))
    Nrv=[1 2 3];
    rCW=ceil(rand*3);
elseif (iNr>=iNrVal(2) && iNr<=iNrVal(4))
    Nrv=[2 3 4];
    rCW=ceil(rand*3);
elseif (iNr>=iNrVal(3) && iNr<=iNrVal(6))
    Nrv=[3 4 5 6]; 
    rCW=ceil(rand*3);
else
    
    if iNr<1 
        rCW=1;
    end
    if iNr>6
        rCW=3;
    end
end
% rCW
% cCW
% CWMat
CW=CWMat(rCW,cCW); 
end
