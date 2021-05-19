$(document).on("turbolinks:load",function() { 

      const client = algoliasearch('110S5077CQ', '32aa983c15ccc5618142767ed638f3f2');
      
        const listing = client.initIndex('Listing');
        const tag = client.initIndex('Tag');
        const bus = client.initIndex('BusDeparture')
        const blood = client.initIndex('Donor')
        const imp_number = client.initIndex('EmergencyNumber')
        const profession = client.initIndex('Profession')
        const tourist = client.initIndex('Tourist')

        autocomplete(
          '#aa_search_input',
          {
            debug: true,
          },
          [
            {
              source: autocomplete.sources.hits(tag, {hitsPerPage: 3}),
              displayKey: 'title_en',
              name: 'tag',
              templates: {
                suggestion({logoUrl, _highlightResult}) {
                  return `
                      <span>${_highlightResult.title_en.value}</span>
                    `;
                },
              },
            },
            {
              source: autocomplete.sources.hits(listing, {hitsPerPage: 3}),
              displayKey: 'name',
              name: 'listing',
              templates: {
                suggestion({_highlightResult}) {
                  return `<span>${_highlightResult.name.value}</span>`;
                },
              },
            },
            {
              source: autocomplete.sources.hits(bus, {hitsPerPage: 1}),
              displayKey: 'destination',
              name: 'bus',
              templates: {
                suggestion({_highlightResult}) {
                  return `<span>Buses to ${_highlightResult.destination.value}</span>`;
                },
              },
            },
            {
              source: autocomplete.sources.hits(blood, {hitsPerPage: 1}),
              displayKey: 'blood_group',
              name: 'blood',
              templates: {
                suggestion({_highlightResult}) {
                  return `<span>${_highlightResult.blood_group.value} Blood Donor</span>`;
                },
              },
            },
            {
              source: autocomplete.sources.hits(imp_number, {hitsPerPage: 3}),
              displayKey: 'name',
              name: 'imp_number',
              templates: {
                suggestion({_highlightResult}) {
                  return `<span>${_highlightResult.name.value} Phone number</span>`;
                },
              },
            },
            {
              source: autocomplete.sources.hits(profession, {hitsPerPage: 3}),
              displayKey: 'name',
              name: 'profession',
              templates: {
                suggestion({_highlightResult}) {
                  return `<span>${_highlightResult.name.value}</span>`;
                },
              },
            },
            {
              source: autocomplete.sources.hits(tourist, {hitsPerPage: 2}),
              displayKey: 'place_name',
              name: 'tourist',
              templates: {
                suggestion({_highlightResult}) {
                  return `<span>${_highlightResult.place_name.value}</span>`;
                },
              },
            },
          ]
        );


  });


