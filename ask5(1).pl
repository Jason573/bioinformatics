while(<>){
    if(/PubMed=(\d+)/){
        print" $1\n";
    }
  
}