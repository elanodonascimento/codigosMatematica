N=1e5;               // Cria 100000
b=rand(1,N,'n');     // 
b=sign(b);
b=0.5*(b+1);
n=rand(1,N,'n');
n=n-mean(n);   // n é o ru[ido
n=sqrt(0.1)*n; //  
bn=b+n;        // soma o ruido ao sinal
erro=0;     
bd=0*b;      //cria um vetor com o numero de posicoes de b
for k=1:N     //
    if bn(k)>0.5 then bd(k)=1; end;  //decodifica o sinal
end
erros=sum(abs(b-bd));     //faz a diferenca entre o sinal inicial e o com erros
taxa=erros/N;             // e conta os erros
disp(taxa); // teste git hub
