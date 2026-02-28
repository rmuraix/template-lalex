use File::Basename;
use Cwd qw(abs_path);
my $root = dirname(abs_path(__FILE__));

$ENV{'TEXINPUTS'} = "./style//:" . "$root/shared/style//:" . ($ENV{'TEXINPUTS'} // '');
$ENV{'BIBINPUTS'} = "./references//:" . ($ENV{'BIBINPUTS'} // '');

$pdf_mode = 4;
$lualatex = 'lualatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
$out_dir = 'out';
