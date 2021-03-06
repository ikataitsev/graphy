#--
# Copyright (c) 2006 Shawn Patrick Garbett
# Copyright (c) 2002,2004,2005 by Horst Duchene
# 
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
# 
#     * Redistributions of source code must retain the above copyright notice(s),
#       this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright notice,
#       this list of conditions and the following disclaimer in the documentation
#       and/or other materials provided with the distribution.
#     * Neither the name of the Shawn Garbett nor the names of its contributors
#       may be used to endorse or promote products derived from this software
#       without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#++

require 'set'

module Graphy
  autoload :AdjacencyGraph,      'graphy/adjacency_graph'
  autoload :Arc,                 'graphy/arc'
  autoload :ArcNumber,           'graphy/arc_number'
  autoload :Biconnected,         'graphy/biconnected'
  autoload :ChinesePostman,      'graphy/chinese_postman'
  autoload :Common,              'graphy/common'
  autoload :Comparability,       'graphy/comparability'
  
  autoload :DirectedGraph,       'graphy/directed_graph'
  autoload :Digraph,             'graphy/directed_graph'
  autoload :DirectedPseudoGraph, 'graphy/directed_graph'
  autoload :DirectedMultiGraph,  'graphy/directed_graph'
  
  autoload :Dot,              'graphy/dot'
  autoload :Edge,             'graphy/edge'
  autoload :Graph,            'graphy/graph'
  autoload :GraphAPI,         'graphy/graph_api'
  autoload :Labels,           'graphy/labels'
  autoload :MaximumFlow,      'graphy/maximum_flow'
  autoload :Rdot,             'graphy/rdot'
  autoload :Search,           'graphy/search'
  autoload :StrongComponents, 'graphy/strong_components'
  autoload :UndirectedGraph,  'graphy/undirected_graph'
end

# Vendored libraries

require 'pathname'

path = Pathname.new(__FILE__)
$LOAD_PATH.unshift(path + '../../vendor')
$LOAD_PATH.unshift(path + '../../vendor/priority-queue/lib')

require 'rdot'
require 'priority_queue/ruby_priority_queue'
PriorityQueue = RubyPriorityQueue
