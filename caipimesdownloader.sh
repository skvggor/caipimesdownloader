download_provas () {
  clear
  echo -n 'Digite o CÓDIDO DO CARGO (exemplo: 045, 055, 083 etc.) e tecle <Enter>: '; read os
  echo ''
  sleep 3
  wget http://www.caipimes.com.br/pmsa082011/provas/$os.pdf
  N_FILES=`ls | grep -c $os`
  
  if (test $N_FILES -gt 0) then
    echo ''
    echo 'Download concluído!'; echo -n ' O arquivo foi salvo em '; pwd
    echo ''
    sleep 3
  else
    echo ''
    echo 'O arquivo não foi salvo! Erro ao baixar...'
    echo ''
    sleep 3
  fi;
  return 0
}

download_provas