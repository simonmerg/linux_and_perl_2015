package fasta_seq;
use strict;
use warnings;

sub new
{
    my $class = shift;
    my $self = {'id' => $_[0]};
    bless $self, $class;
    return $self;
}

sub id
{
    my $self = shift;
    $self->{id} = shift if (defined $_[0]);
    return $self->{id};
}



1;
