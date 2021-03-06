<?php
    /**
     * DataPull/html/dsSelect.tpl
     * Contains the HTML template for the dsSelect subsection
     *
     * @author Cory Gehr
     */
?>
<h1>Welcome!</h1>
<div id='steps-container'>
	<ol id='nav-steps'>
		<li class='active'>1. Pick Data Source</li>
		<li>2. Choose Data Points</li>
		<li>3. Add Filters</li>
		<li>4. Review Data</li>
	</ol>
</div>
<p>
	To begin, please choose a data source below:
</p>
<form id='dsSelect' method='post' action='<?php echo createUrl('DataPull', 'dsSelect', array('phase' => 'proceed')); ?>'>
	<fieldset>
		<legend>Select Data Source</legend>
		<label for='schema'>Schema:</label>
		<br />
		<select id='schema' name='schema'>
			<option>Select One:</option>
<?php
	// Get schemata
	$schemata = $this->get('schemas', 'inline');

	foreach($schemata as $s)
	{
		list($n) = $s;
		echo "<option value='$n'>$n</option>";
	}
?>
		</select>
		<br />
		<label for='table'>Table:</label>
		<br />
		<select id='table' name='table' disabled>
			<option>--Choose a Schema to populate this list--</option>
		</select>
		<br />
		<input type='submit' value='Next >' />
	</fieldset>
</form>
<script type='text/javascript' src='Section/DataPull/html/dsSelect.js'></script>