<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * UserPhotos Controller
 *
 * @property \App\Model\Table\UserPhotosTable $UserPhotos
 */
class UserPhotosController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $userPhotos = $this->paginate($this->UserPhotos);

        $this->set(compact('userPhotos'));
        $this->set('_serialize', ['userPhotos']);
    }

    /**
     * View method
     *
     * @param string|null $id User Photo id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $userPhoto = $this->UserPhotos->get($id, [
            'contain' => []
        ]);

        $this->set('userPhoto', $userPhoto);
        $this->set('_serialize', ['userPhoto']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $userPhoto = $this->UserPhotos->newEntity();
        if ($this->request->is('post')) {
            $userPhoto = $this->UserPhotos->patchEntity($userPhoto, $this->request->data);
            if ($this->UserPhotos->save($userPhoto)) {
                $this->Flash->success(__('The user photo has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user photo could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('userPhoto'));
        $this->set('_serialize', ['userPhoto']);
    }

    /**
     * Edit method
     *
     * @param string|null $id User Photo id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $userPhoto = $this->UserPhotos->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $userPhoto = $this->UserPhotos->patchEntity($userPhoto, $this->request->data);
            if ($this->UserPhotos->save($userPhoto)) {
                $this->Flash->success(__('The user photo has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user photo could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('userPhoto'));
        $this->set('_serialize', ['userPhoto']);
    }

    /**
     * Delete method
     *
     * @param string|null $id User Photo id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $userPhoto = $this->UserPhotos->get($id);
        if ($this->UserPhotos->delete($userPhoto)) {
            $this->Flash->success(__('The user photo has been deleted.'));
        } else {
            $this->Flash->error(__('The user photo could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
