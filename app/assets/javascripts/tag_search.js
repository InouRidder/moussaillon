// WELCOME TO INOU'S CLIENT SIDE TAGS FILTER FUNCTION!

// Classes to define for ADDING TAGS
// elements = are the objects you want to search through
// to the elements you search through, add a custom html data element called: data-tags and set its value to an empty string. data-tags=""
// searchButton = the tag you want to add for initial search
// query_input = is the form where people add tags
// list = the div where you want to store the tags and display them to the user! Make it a list item, as we append li items!


// DEFINE CONSTANT SEARCHBUTTON
const searchButton = document.getElementById('invoice_search_button');
const elements = document.querySelectorAll('.invoice_row');
const list = document.getElementById('tags-list');

// DEFINING THE TAGARRAY - the current active tags
let tagArray = [];

function removeEmptyStringFromArray(array) {
  return array.filter(function(entry) { return /\S/.test(entry); });
};

function removeWhiteSpace(element) {
  return element.replace(/[\W]+/g, '');
};

function addButtonToDocument(query) {
    if (query != "") {
      list.insertAdjacentHTML("afterBegin", `<li id="tag"><p>${query}</p><a id="tag-button-${query}" href="#"><i class="fa fa-times-circle" aria-hidden="true"></i></a></li>`);
        tagArray.push(query);
      let button = document.getElementById(`tag-button-${query}`);
      addRemoveListener(button);
    };
  };


function addRemoveListener(button) {
  button.addEventListener('click', (e) => {
    e.preventDefault();
      //  REMOVE TAG FROM ARRAY
      const tag = removeWhiteSpace(button.parentElement.innerText);
      const index = tagArray.indexOf(tag);
      tagArray.splice(index, 1);
      // REMOVE HTML ELEMENT
      button.parentElement.remove();

      elements.forEach(function(row) {
        // grab the data tags element per row
        let tags = removeEmptyStringFromArray(row.getAttribute('data-tags').split(" "));
        // if there are no tags, display all rows
        if (tagArray.length == 0)  {
         row.hidden = false
        }
        // check if for this row there is the element data-tags
       if (tags.length >= 1) {
        if (tags.includes(tag)) {
          const index = tags.indexOf(tag);
          tags.splice(index, 1);
          row.setAttribute('data-tags', tags.join(" "));
        }
        if (tagArray.toString() == tags.toString()) {
          row.hidden = false
        }
        else {
         row.hidden = true
        }
      }
    });
  });
};

// adding an event listener on the search button
searchButton.addEventListener('click', (e) => {
  e.preventDefault();
  // Grab the value of the search button and emptying.
  const query_input = document.getElementById('invoice_search_input')
  const query = removeWhiteSpace(query_input.value.toLowerCase());
  query_input.value = "";

  if (tagArray.includes(query)) {
    return;
  };
  // grabbing the list element for displayed tags

  addButtonToDocument(query);

  // on second iteration only check on rows where hidden is false

  elements.forEach((row) => {
  const tagElements = row.getAttribute('data-tags');
    let tags = removeEmptyStringFromArray(tagElements.split(" "));
    const text = row.innerText.toLowerCase();

    tagArray.forEach((tag) => {
      tag = removeWhiteSpace(tag);
      if (text.includes(tag)) {
        if (!(tags.includes(tag))) {
          tags.push(tag);
          row.setAttribute('data-tags', tags.join(" "));
        }
      }
      else {
        row.hidden = true
      }
    });
  });
});
