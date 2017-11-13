#! /usr/bin/env ruby

require 'dtake'
require 'thor'

module Dtake
  class CLI < Thor
    default_command :main
		
		desc "dtake some.rb", "download" # コマンドの使用例と、概要
		def main(argv)
			if argv == '-ls'
				list_url = "https://web.sfc.keio.ac.jp/~takefuji/list.html" 
				doc = Nokogiri::HTML(open(list_url))
				doc.inner_html.split("\n").each do |line|
					puts line
				end
				exit
			end
			command = "wget https://web.sfc.keio.ac.jp/~takefuji/" + filename
		end
	end
end
