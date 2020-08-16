%% Init

clc; clear;

%% Make vectors

vec1 = [1 2 3 4];
vec2 = [1, 2, 3, 4];
vec3 = 1:4;

disp(vec1);
disp(vec2);
disp(vec3);

vec4 = 1:2:100; % Vector comprising values with spacings. Middle value is the spacing value.
vec5 = linspace(1,100,2); % linspace does a similar thing, except we enter in how many elements we want instead of spacing.

disp(vec4)
disp(vec5)

vec6 = zeros(1,6); % Vector comprising of zeros. (Use this!)
vec7 = NaN(1,6); % Vector comprising of NaNs.

%% Make matrices

% comma(,) indicates next element in the same row.
% semicolon(;) indicates next row.

mat1 = [1,2,3; 4,5,6; 7,8,9]; 
mat1_int = int32([1,2,3; 4,5,6; 7,8,9]); % int32 version of mat1 

mat2 = zeros(3,3); % Matrix filled with 0
mat3 = NaN(3,3); % Matrix filled with NaN

%% Vector / matrix indexing

vec = [1,2,3,4,5,6,7,8,9];
mat = [1,2,3 ; 4,5,6; 7,8,9];

Elem5 = vec(5);
row2Col2 = mat(2,2);

% data = vec(3,3); % This one will not work, as there is no row3/col3 on
% Vec.

% data = mat(5,5); % This one will not work, as mat is 3x3 matrix.

%% Matrix calculation

mat1 = [1,2,3; 4,5,6; 7,8,9];
mat2 = [3,2,1; 6,5,4; 9,8,7];

mat3 = mat1 + mat2;
mat4 = mat1 - mat2;
mat5 = mat1 * mat2; % Only the (m*n) * (n*p) multiplications are possible
%mat6 = mat1 / mat2; % Why does this not work? ;)
mat6 = mat1 .* mat2; % Element-wise multiplication
mat7 = mat1 ./ mat2; % Element-wise division

scalar = 3;

mat8 = scalar * mat1;
mat9 = mat1 * scalar;
mat10 = mat1 + scalar; % Element-wise addition
mat11 = mat1 - scalar; % Element-wise subtraction

%% Matrix functions

mat1 = [1,2,3,4 ; 5,6,7,8];
mat2 = [1,2,3; 4,5,6; 7,8,9];

mat3 = reshape(mat1,[4 2]); % Reshape
transMat1 = mat1'; % Matrix transpose;

determinant = det(mat2); % Determinant
pinvMat1 = pinv(mat1); % Pseudo-inverse of matrix
invMat2 = inv(mat2); % Inverse matrix
normMat2 = norm(mat2); % Matrix norm
rankMat2 = rank(mat2); % Matrix rank
[V_eigen,D_eigen] = eig(mat2); % Eigenvector

[U_svd,S_svd,V_svd] = svd(mat2); % Singular value decomposition
[Q_QR, R_QR, P_QR] = qr(mat2); % QR decomposition
% LU decomposition, Cholesky decomposition are also avaiable.

%% Matrix merging

mat3x3 = zeros(3,3);
mat3x1 = ones(3,1);
mat1x4 = NaN(1,4);

mat = [mat3x3 mat3x1];
mat = [mat; mat1x4];
