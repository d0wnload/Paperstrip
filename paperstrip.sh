#!/bin/sh
mkdir clean

for i in *.html
do
  echo "$i"
cat "$i" | grep -vF '<?xml|<!DOCTYPE|<html|html>|<script|script>|<form|form>|<link|<input|<select|select>|<option|google|style=|<head|head>|<!--INFOLINKS_OFF-->|//-->' > clean/"$i"
done
