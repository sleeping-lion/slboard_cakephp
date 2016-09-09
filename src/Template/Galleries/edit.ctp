<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $gallery->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $gallery->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Galleries'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="galleries form large-9 medium-8 columns content">
    <?= $this->Form->create($gallery) ?>
    <fieldset>
        <legend><?= __('Edit Gallery') ?></legend>
        <?php
            echo $this->Form->input('user_id');
            echo $this->Form->input('gallery_category_id');
            echo $this->Form->input('title');
            echo $this->Form->input('content');
            echo $this->Form->input('location');
            echo $this->Form->input('photo');
            echo $this->Form->input('count');
            echo $this->Form->input('enable');
            echo $this->Form->input('created_at');
            echo $this->Form->input('updated_at');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
