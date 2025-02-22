#-- copyright
# OpenProject is an open source project management software.
# Copyright (C) 2012-2024 the OpenProject GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License version 3.
#
# OpenProject is a fork of ChiliProject, which is a fork of Redmine. The copyright follows:
# Copyright (C) 2006-2013 Jean-Philippe Lang
# Copyright (C) 2010-2013 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# See COPYRIGHT and LICENSE files for more details.
#++

FactoryBot.define do
  factory(:color, class: 'Color') do
    sequence(:name) { |n| "Color No. #{n}" }
    hexcode { ('#%0.6x' % rand(0xFFFFFF)).upcase }
  end
end

{ 'maroon' => '#800000',
  'red' => '#FF0000',
  'orange' => '#FFA500',
  'yellow' => '#FFFF00',
  'olive' => '#808000',
  'purple' => '#800080',
  'fuchsia' => '#FF00FF',
  'white' => '#FFFFFF',
  'lime' => '#00FF00',
  'green' => '#008000',
  'navy' => '#000080',
  'blue' => '#0000FF',
  'aqua' => '#00FFFF',
  'teal' => '#008080',
  'black' => '#000000',
  'silver' => '#C0C0C0',
  'gray' => '#808080' }.each do |name, code|
  FactoryBot.define do
    factory(:"color_#{name}", parent: :color) do
      name { name }
      hexcode { code }
    end
  end
end
