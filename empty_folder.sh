#deletar todos os arquivos em uma árvore de pastas, preservar as pastas

#nfolder(:,:)=-1

#do i=0,maxlevel
  #if nfolder(nivel)>0 #se for maior que zero é porque eu já contei e ainda não zerei
  #cd foldername(nfledr(nivel), nivel)
    #if nfolder(nivel)==0
      #ls
      #for each output
       #if file
          #trash #file
        #elseif folder
          #nfolder(nivel) = nfloder(nivel)+1 !numero de pastas pra entrar a partir desse nivel
          #foldername(indice, nivel) <= 
        #endif exclusão e contagem
      #endfor
    #elseif==nflder(nivel)==0 #zerado, !uma a menos no nivel acima
      #if nivel-1 = -1
        #exit #pronto
      #endif
      #nfolder(nivel-1)=nfolder(nivel-1)-1 !uma a menos no nivel acima
      #cd ..
    #elseif nflder(nivel)==-1 #não inicializdo
    #endif
#enddo

