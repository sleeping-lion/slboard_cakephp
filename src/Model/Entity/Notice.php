<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Notice Entity
 *
 * @property int $id
 * @property int $user_id
 * @property string $title
 * @property bool $enable
 * @property int $count
 * @property \Cake\I18n\Time $created_at
 * @property \Cake\I18n\Time $updated_at
 *
 * @property \App\Model\Entity\User $user
 */
class Notice extends Entity
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
