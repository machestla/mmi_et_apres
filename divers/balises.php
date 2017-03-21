<?php

function input($type,$name,$attributes = array()) {
	$opt = attrs($attributes);
	return "<input type='$type' name='$name' $opt />";
}

function select($name,$tabValeurs) {
	$tmp ="";
	foreach($tabValeurs as $ret=>$val) {
		$tmp = $tmp. "<option value='$ret'>$val</option>\n";
	}

	return "<select name='$name'>$tmp</select>";
}

?>
