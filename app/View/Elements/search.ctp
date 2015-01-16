<div class="col-xs-12 col-md-10">
<form class="form-inline" role="form" method="get" style="float:right">
	<select name="search_type" class="form-control" required="required">
		<option value="title"><?php echo __('Title') ?></option>
		<option value="content"><?php echo __('Content') ?></option>
		<option value="title+content"><?php echo __('Title or Content') ?></option>
	</select>
	<input type="search" name="search_text" maxlength="60" class="form-control" placeholder="<?php echo __('insert search word') ?>" required="required" />
	<input type="submit" class="btn btn-default" value="<?php echo __('Search') ?>" />
</form>
</div>