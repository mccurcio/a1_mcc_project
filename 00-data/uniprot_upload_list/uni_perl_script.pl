use strict;
use warnings;
use LWP::UserAgent;

my $list = 'species2.txt'; # File containg list of UniProt identifiers.

my $base = 'http://www.uniprot.org';
my $tool = 'uploadlists';

my $contact = 'matt.curcio.ri@gmail.com'; # contact email 
my $agent = LWP::UserAgent->new(agent => "libwww-perl $contact");
push @{$agent->requests_redirectable}, 'POST';

my $response = $agent->post("$base/$tool/",
                            [ 'file' => [$list],
                              'format' => 'txt',
                              'from' => 'ACC+ID',
                              'to' => 'ACC',
                            ],
                            'Content_Type' => 'form-data');

while (my $wait = $response->header('Retry-After')) {
  print STDERR "Waiting ($wait)...\n";
  sleep $wait;
  $response = $agent->get($response->base);
}

$response->is_success ?
  print $response->content :
  die 'Failed, got ' . $response->status_line .
    ' for ' . $response->request->uri . "\n";
    
    
    
# You can retrieve a random entry by appending &random=yes to any query, e.g. the following query returns a random reviewed human entry:

# https://www.uniprot.org/uniprot/?query=reviewed:yes+AND+organism:9606&random=yes   


    
