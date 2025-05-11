while (<>){
if(/^[ATCG]+$/i){
    print"valid\n";
}
else{
    print"invalid\n";
}
}