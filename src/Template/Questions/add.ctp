<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Questions'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="questions form large-9 medium-8 columns content">
    <?= $this->Form->create($question) ?>
    <fieldset>
        <legend><?= __('Add Question') ?></legend>
        <?php
            echo $this->Form->input('user_id');
            echo $this->Form->input('title');
            echo $this->Form->input('name');
            echo $this->Form->input('encrypted_password');
            echo $this->Form->input('salt');
            echo $this->Form->input('secret');
            echo $this->Form->input('question_comments_count');
            echo $this->Form->input('count');
            echo $this->Form->input('enable');
            echo $this->Form->input('created_at');
            echo $this->Form->input('updated_at');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
