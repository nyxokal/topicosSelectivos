<?php
if (isset($_POST['action'])) {
  switch ($_POST['action']) {
    case 'insert':
      insert();
      break;
    case 'select':
      select();
      break;
    case 'show':
      show();
      break;
  }
}

function select() {
  echo "The select function is called.";
    exit;
}

function show() {
  echo "The show function is called.";
    exit;
}

function insert() {
  echo "The insert function is called.";
    exit;
}
?>