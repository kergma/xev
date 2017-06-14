package xev::Controller::test;
use Moose;
use namespace::autoclean;
use utf8;

no warnings 'uninitialized';

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

wf::Controller::rec - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0)
{
	my ( $self, $c ) = @_;

	$c->response->body('here');
}

sub foo:Local :Form
{
	my ( $self, $c ) = @_;
	$c->response->body('bar');

}
=head1 AUTHOR

Pushkinsv

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

#__PACKAGE__->meta->make_immutable;

1;
