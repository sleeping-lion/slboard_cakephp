<form action="/theme_select" style="float:right">
	<select name="theme">
		<option value="default"><?php echo __d('theme','Default Theme') ?></option>
		<option value="simple"><?php echo __d('theme','Simple Theme') ?></option>
		<option value="BlacknWhite"><?php echo __d('theme','BlacknWhite Theme') ?></option>
	</select>
	<input value="<?php echo __('Change Theme') ?>" type="submit" />
</form>