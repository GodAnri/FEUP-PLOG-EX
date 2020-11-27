% ?- r(X,Y), s(Y,Z), not(r(Y,X)), not(s(Y,Y)).
% X = a, Y = d, Z = e.

% r(a,b);
    % s(b,d);
% 1.    not(r(b,a)); - False
    % s(b,d);
% 2.    not(r(b,a)); - False
% r(a,c);
    % s(c,c);
        % not(r(c,a));
% 3.        not(s(c,c)); - False
% r(b,a);
    % s(b,z) - False;
% r(a,d);
    % s(d,e);
        % not(r(d,a));
            % not(s(d,d));

% 3 vezes