=begin
    Copyright 2010-2016 Tasos Laskos <tasos.laskos@arachni-scanner.com>

    This file is part of the Arachni Framework project and is subject to
    redistribution and commercial restrictions. Please see the Arachni Framework
    web site for more information on licensing and terms of use.
=end

module Arachni
class Parser
module Extractors

# @author Tasos "Zapotek" Laskos <tasos.laskos@arachni-scanner.com>
# @abstract
class Base

    attr_reader :html
    attr_reader :parser
    attr_reader :downcased_html

    def initialize( options = {} )
        @html           = options[:html]
        @downcased_html = @html.downcase
        @parser         = options[:parser]
    end

    # This method must be implemented by all checks and must return an
    # array of paths as plain strings
    #
    # @return   [Array<String>]  paths
    # @abstract
    def run
    end

    def includes?( string_or_regexp )
        !!@downcased_html[string_or_regexp]
    end

    def document
        parser.document
    end

end

end
end
end
