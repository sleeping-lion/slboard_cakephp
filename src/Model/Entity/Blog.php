<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Blog Entity
 *
 * @property int $id
 * @property int $user_id
 * @property int $blog_category_id
 * @property string $title
 * @property string $description
 * @property string $photo
 * @property int $blog_comments_count
 * @property int $count
 * @property bool $enable
 * @property \Cake\I18n\Time $created_at
 * @property \Cake\I18n\Time $updated_at
 *
 * @property \App\Model\Entity\User $user
 * @property \App\Model\Entity\BlogCategory $blog_category
 * @property \App\Model\Entity\BlogComment[] $blog_comments
 * @property \App\Model\Entity\BlogTranslation[] $blog_translations
 */
class Blog extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true,
        'id' => false
    ];
}
