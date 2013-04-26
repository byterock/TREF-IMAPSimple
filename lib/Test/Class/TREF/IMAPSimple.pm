
$Test::Class::TREF::IMAPSimple::VERSION = '0.0000.000001'; #vvery vvery beta
use lib qw( C:\johns\Dropbox\Code_Base\CPAN\Test-Class-Rig\lib );
#use lib 'C:\Users\John Scoles\Dropbox\Code_Base\CPAN\Test-Class-Rig\lib';
#           C:\Users\John Scoles\Dropbox\Code_Base\CPAN\Test-Class-Rig\lib\Test\Class);
{ package
  Test::Class::TREF::IMAPSimple;
  use Test::Class::Rig();
  use Net::IMAP::Simple;
  use Exporter();
  @ISA = qw(Exporter IMAPSimple);
  use Data::Dumper;
  $trecrh = undef;	# holds client handle once initialized
  sub email_file_system {
    return $trecrh if $trecrh;
    my($class, $attr) = @_;
    $class .= "::trec";
    # not a 'my' since we use it above to prevent multiple clients
    #warn("end here agent $class");
    $trecrh = Test::Class::Rig::_new_trecrh($class,"Net::IMAP::Simple", {
        'Name' => 'IMAPSimple',
        'Version' => $VERSION,
        'Err'    => \my $err,
        'Errstr' => \my $errstr,
        'Attribution' => "TREC::IMAPSimple $VERSION using Test::Class::Rig by John Scoles",
        });
    return $trecrh;
}
{ package
  Test::Class::TREC::IMAPSimple::trec;
  use strict;
  sub ping {
    warn("this is tra ping 'Test::Class::TREC::IMAPSimple::trec'\n")
  }
} #Test::Class::TRA::IMAPSimple::tra
} #Test::Class::TRA::IMAPSimple;
1;
__END__
