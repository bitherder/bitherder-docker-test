get '/' do
  env_html=ENV.each.with_object([]){|(key,val),res| puts "#{key.inspect} | #{val.inspect} | #{res.inspect}"; res << "<dt>#{key}</dt><dd>#{val}</dd>"}.join("\n")
  """<html>
       <head><title>Dump</title><head>
       <body>
         <dl>
           #{env_html}
         </dl>
       </body>
  </html>"""
end
