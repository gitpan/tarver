use Test::More tests => 13;

BEGIN { use_ok('File::Copy'); }
my $test;

&clear_testenv;
&make_testenv;
t("tarver testtmp/data.tgz");
t("tarver testtmp/data.tgz");
t("tarver testtmp/data.tgz etc/redhat-release");
t("tarver testtmp/data.tgz etc/kids-release");
t("tarver -l testtmp/data.tgz etc/");
t("tarver -t testtmp/data.tgz etc/redhat-release 8.2B4.3348P3");
t("tarver -t testtmp/data.tgz etc/kids-release 8.2B4.3348P3");
t("tarver -s testtmp/data.tgz etc/redhat-release 8.2B4.3348P3");
t("tarver -s testtmp/data.tgz etc/kids-release 8.2B4.3348P3");
&clear_testenv;

sub t {	is( system( $^X . " " . $_[0] ), 0, $_[0] ); }

sub make_testenv {
	mkdir "testtmp";
	copy("testcase/data.tgz", "testtmp/data.tgz");
	ok(
		-d "testtmp" &&
		-f "testtmp/data.tgz", "Make testtmp" );
}

sub clear_testenv {
	foreach ( qw(
		testtmp/data.tgz
		testtmp
	) ) {
		unlink $_ if -f $_;
		rmdir $_ if -d $_;
	}
	ok( not( -d "testtmp"), "clear testtmp" );
}

1;
__END__;