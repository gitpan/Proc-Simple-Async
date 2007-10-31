package Proc::Simple::Async;

use Exporter qw/import/;
use Proc::Simple;

use strict;
use warnings;

our $VERSION = 0.01;

our $AUTHORITY = 'cpan:BERLE';

our @EXPORT = qw/async/;

sub async (&;@) {
  my $proc = Proc::Simple->new;

  $proc->start (@_);

  return $proc;
}

1;

__END__

=pod

=head1 NAME

Proc::Simple::Async - Keyword sugar for Proc::Simple

=head1 SYNOPSIS

  async {
    some_task();
  };

  my $proc = async {
    some_other_task(@_)
  } 1,2,3,4;

=head1 FUNCTIONS

=over 4

=item async

Provides a prettier way of doing

  my $proc = Proc::Simple->new;

  $proc->start (sub { some_task() });

=back

=head1 SEE ALSO

=over 4

=item L<Proc::Simple>

=back

=head1 BUGS

Most software has bugs. This module probably isn't an exception. 
If you find a bug please either email me, or add the bug to cpan-RT.

=head1 AUTHOR

Anders Nor Berle E<lt>berle@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Anders Nor Berle.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut

