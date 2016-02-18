function addItem(list)
{
    var listItem = document.createElement("li");
    listItem.innerText = prompt("Add something");
    list.appendChild(listItem);
}

var button = document.getElementById("add");

button.onclick = function()
{
  addItem(document.getElementById("todo"));
};
