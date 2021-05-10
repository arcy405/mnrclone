$(document).on("turbolinks:load",function() { 

      const client = algoliasearch('110S5077CQ', 'da8844c8008d9206a1e9846a6f74d5c6');
      
        const listing = client.initIndex('Listing');
        const tag = client.initIndex('Tag');

        autocomplete(
          '#aa_search_input',
          {
            debug: true,
            templates: {
              dropdownMenu:
                '<div class="aa-dataset-tag"></div>' +
                '<div class="aa-dataset-listing"></div>',
            },
          },
          [
            {
              source: autocomplete.sources.hits(tag, {hitsPerPage: 3}),
              displayKey: 'title_en',
              name: 'tag',
              templates: {
                header: '<div class="aa-suggestions-category font-weight-bold text-info">Business Tags</div>',
                suggestion({logoUrl, _highlightResult}) {
                  return `
                      <span>${_highlightResult.title_en.value}</span>
                    `;
                },
                empty: '<div class="aa-empty">No matching tags</div>',
              },
            },
            {
              source: autocomplete.sources.hits(listing, {hitsPerPage: 3}),
              displayKey: 'name',
              name: 'listing',
              templates: {
                header: '<div class="aa-suggestions-category  font-weight-bold text-info">Business Listings</div>',
                suggestion({_highlightResult}) {
                  return `<span>${_highlightResult.name.value}</span>`;
                },
                empty: '<div class="aa-empty">No matching listings</div>',
              },
            },
          ]
        );


  });


