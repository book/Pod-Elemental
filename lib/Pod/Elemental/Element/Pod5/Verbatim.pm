package Pod::Elemental::Element::Pod5::Verbatim;
use Moose;
extends 'Pod::Elemental::Element::Generic::Text';
with    'Pod::Elemental::Autoblank';
with    'Pod::Elemental::Autochomp';
# ABSTRACT: a Pod verbatim paragraph

# BEGIN Autochomp Replacement
use Pod::Elemental::Types qw(ChompedString);
has '+content' => (coerce => 1, isa => ChompedString);
# END   Autochomp Replacement

=head1 OVERVIEW

Pod5::Verbatim elements represent "verbatim" paragraphs of text.  These are
ordinary, flat paragraphs of text that were indented in the source Pod to
indicate that they should be represented verbatim in formatted output.  The
following paragraph is a verbatim paragraph:

  This is a verbatim
      paragraph
         right here.

=cut

use namespace::autoclean;

1;
