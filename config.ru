use Rack::Static,
    urls: ['/assets/images', '/assets/javascripts', '/assets/stylesheets'],
    root: 'public',
    index: 'index.html',
    header_rules: [
      [:all, { 'Cache-Control' => 'public, max-age=864000' }]
    ]

run lambda { |_env|
  [
    404,
    { 'Content-Type' => 'text/html' },
    ['Page Not Found (404)']
  ]
}
