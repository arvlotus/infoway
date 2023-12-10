<?php
function isActivepage($currentPage, $pageName)
{
  if ($currentPage == $pageName) {
    return 'active';
  }
  return '';
}
?>