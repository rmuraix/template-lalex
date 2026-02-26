$ENV{'TEXINPUTS'} = "./style//:./shared//:" . $ENV{'TEXINPUTS'};
$ENV{'BIBINPUTS'} = "./references//:" . $ENV{'BIBINPUTS'};

$pdf_mode = 4;
$lualatex = 'lualatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
$out_dir = 'out';
