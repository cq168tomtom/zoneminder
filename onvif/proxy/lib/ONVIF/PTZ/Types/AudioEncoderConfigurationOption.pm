package ONVIF::PTZ::Types::AudioEncoderConfigurationOption;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Encoding_of :ATTR(:get<Encoding>);
my %BitrateList_of :ATTR(:get<BitrateList>);
my %SampleRateList_of :ATTR(:get<SampleRateList>);

__PACKAGE__->_factory(
    [ qw(        Encoding
        BitrateList
        SampleRateList

    ) ],
    {
        'Encoding' => \%Encoding_of,
        'BitrateList' => \%BitrateList_of,
        'SampleRateList' => \%SampleRateList_of,
    },
    {
        'Encoding' => 'ONVIF::PTZ::Types::AudioEncoding',
        'BitrateList' => 'ONVIF::PTZ::Types::IntList',
        'SampleRateList' => 'ONVIF::PTZ::Types::IntList',
    },
    {

        'Encoding' => 'Encoding',
        'BitrateList' => 'BitrateList',
        'SampleRateList' => 'SampleRateList',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::AudioEncoderConfigurationOption

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AudioEncoderConfigurationOption from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Encoding


=item * BitrateList


=item * SampleRateList




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::AudioEncoderConfigurationOption
   Encoding => $some_value, # AudioEncoding
   BitrateList =>  { # ONVIF::PTZ::Types::IntList
     Items =>  $some_value, # int
   },
   SampleRateList =>  { # ONVIF::PTZ::Types::IntList
     Items =>  $some_value, # int
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

