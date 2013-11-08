# This file is part of Astatistics.
# Copyright (C) 2011
# 	Eurogaran Informatica, S.L.
# 
# Astatistics is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# Astatistics is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with Astatistics.  If not, see <http://www.gnu.org/licenses/>.
# 
# See the file COPYING for copying conditions.

package Astatistics;
use Moose;
use namespace::autoclean;

use Catalyst::Runtime 5.80;

# Set flags and add plugins for the application
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory

use Catalyst qw/
    -Debug
    ConfigLoader
    Static::Simple

		Authentication
		Authorization::Roles
		Session
		Session::State::Cookie
		Session::Store::FastMmap
		I18N
		Unicode
/;

# Note: FastMmap can not be used in a load balanced cluster environment.

extends 'Catalyst';

our $VERSION = '0.05';
$VERSION = eval $VERSION;

## Execute _initialize_after_setup when all application is already loaded
## so some Models can make use of others.
#after 'setup_components' => sub {
#	my $app = shift;
#	for (keys %{ $app->components }) {
#		$app->components->{$_}->_initialize_after_setup($app) 
#		if $app->components->{$_}->can('_initialize_after_setup');
#	}
#};

# Configure the application.
#
# Note that settings in astatistics.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config(
    name => 'Astatistics',
    # Disable deprecated behavior needed by old applications
    disable_component_resolution_regex_fallback => 1,
		'View::TT' => {
			INCLUDE_PATH => [
				__PACKAGE__->path_to('root', 'src'),
				__PACKAGE__->path_to('root', 'lib')
			],
			TEMPLATE_EXTENSION	=> '.tt',
			CATALYST_VAR				=> 'c',
			TIMER								=> 0,
			WRAPPER							=> 'site/wrapper'
		},
		'View::Wkhtmltopdf' => {
		#	command   => '/usr/bin/wkhtmltopdf',
			command   => '/usr/local/bin/wkhtmltopdf-catalyst',
		#	# Guessed via File::Spec by default
			tmpdir    => '/tmp',
		#	tmpdir		=> '/tmp/wkhtmltopdf',
		#	# Name of the Template view, "TT" by default
			tt_view   => 'TT',
		},
		'Plugin::Authentication' => {
			default => {
				credential => {
					class => 'Password',
					password_type => 'crypted'
				},
				store => {
					class => 'DBIx::Class',
					user_model => 'Astatistics::User',
					role_relation => 'roles',
					role_field => 'role',
					use_userdata_from_session => '1'
				}
			}
		},
		default_view => 'TT',
);


# Start the application
__PACKAGE__->setup();


=head1 NAME

Astatistics - Catalyst based application

=head1 SYNOPSIS

    script/astatistics_server.pl

=head1 DESCRIPTION

[enter your description here]

=head1 SEE ALSO

L<Astatistics::Controller::Root>, L<Catalyst>

=head1 AUTHOR

,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
