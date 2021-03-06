function N=getNtN(ip)
s=ip(1); t=ip(2);
n1= 0.25*(1-ip(1))*(1-ip(2));
n2= 0.25*(1+ip(1))*(1-ip(2));
n3= 0.25*(1+ip(1))*(1+ip(2));
n4= 0.25*(1-ip(1))*(1+ip(2));

% N(:,1)=[n1;n2;n3;n4]*(1-ip(1)^2);
% N(:,2)=[n1;n2;n3;n4]*(1-ip(2)^2);

% N(:,1)=[n1;n2;n3;n4]*ip(1);
% N(:,2)=[n1;n2;n3;n4]*ip(2);

% N(:,1)=0.25*[1-2*s-t+2*s*t; 
%              1+2*s-t-2*s*t;
%              1+2*s+t+2*s*t;
%              1-2*s+t-2*s*t]; % N_s.s
% N(:,2)=0.25*[-(1-s)*s;
%             -s*(1+s);
%              s*(1+s);
%             (1-s)*s]; % N_s.t
% N(:,3)=0.25*[-(1-t)*t;
%             (1-t)*t;
%             t*(1+t);
%             -t*(1+t)]; % N_t.s
% N(:,4)=0.25*[1-s-2*t+2*s*t;
%              1+s-2*t-2*s*t;
%              1+s+2*t+2*s*t;
%              1-s+2*t-2*s*t;]; % N_t.t

% N(:,1)=0.25*[-(1-ip(2));...
%               (1-ip(2));...
%               (1+ip(2));...
%              -(1+ip(2))]*ip(1); % N_s.s
% N(:,2)=0.25*[-(1-ip(2));...
%               (1-ip(2));...
%               (1+ip(2));...
%              -(1+ip(2))]*ip(2); % N_s.t
% N(:,3)=0.25*[-(1-ip(1));...
%              -(1+ip(1));...
%               (1+ip(1));...
%               (1-ip(1))]*ip(1); % N_t.s
% N(:,4)=0.25*[-(1-ip(1));...
%              -(1+ip(1));...
%               (1+ip(1));...
%               (1-ip(1))]*ip(2); % N_t.t
N(:,1)=0.25*[-(1-t);  (1-t); (1+t); -(1+t)];
N(:,2)=0.25*[-(1-s); -(1+s); (1+s);  (1-s)];
N=N';
