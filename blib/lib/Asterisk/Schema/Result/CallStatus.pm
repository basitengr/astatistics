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

use utf8;
package Asterisk::Schema::Result::CallStatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Asterisk::Schema::Result::CallStatus

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<call_status>

=cut

__PACKAGE__->table("call_status");

=head1 ACCESSORS

=head2 callid

  data_type: 'double precision'
  is_nullable: 0
  size: [18,6]

=head2 callerid

  data_type: 'varchar'
  is_nullable: 0
  size: 13

=head2 status

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 timestamp

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 queue

  data_type: 'varchar'
  is_nullable: 0
  size: 25

=head2 position

  data_type: 'varchar'
  is_nullable: 0
  size: 11

=head2 originalposition

  data_type: 'varchar'
  is_nullable: 0
  size: 11

=head2 holdtime

  data_type: 'varchar'
  is_nullable: 0
  size: 11

=head2 keypressed

  data_type: 'varchar'
  is_nullable: 0
  size: 11

=head2 callduration

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "callid",
  { data_type => "double precision", is_nullable => 0, size => [18, 6] },
  "callerid",
  { data_type => "varchar", is_nullable => 0, size => 13 },
  "status",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "timestamp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "queue",
  { data_type => "varchar", is_nullable => 0, size => 25 },
  "position",
  { data_type => "varchar", is_nullable => 0, size => 11 },
  "originalposition",
  { data_type => "varchar", is_nullable => 0, size => 11 },
  "holdtime",
  { data_type => "varchar", is_nullable => 0, size => 11 },
  "keypressed",
  { data_type => "varchar", is_nullable => 0, size => 11 },
  "callduration",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</callid>

=back

=cut

__PACKAGE__->set_primary_key("callid");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-04 12:12:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AYvH0qyapgfVLtrMFvmpMA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
