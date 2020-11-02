$(document).on("turbolinks:load",function() {  
      const client = algoliasearch('A7MHFN3M3Q', 'c4151ecbeb8327fb29c2d69079d451ea');
      const listings = client.initIndex('Listing');
  
    autocomplete('#aa_search_input', {}, [
      {
        source: autocomplete.sources.hits(listings, { hitsPerPage: 3 }),
        displayKey: 'name',
        templates: {
          suggestion({_highlightResult}) {
            return `<span>${_highlightResult.name.value}</span>`;
          }
        }
      }
  ]);
  });
  