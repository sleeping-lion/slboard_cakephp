<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Taggins Controller
 *
 * @property \App\Model\Table\TagginsTable $Taggins
 */
class TagginsController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $taggins = $this->paginate($this->Taggins);

        $this->set(compact('taggins'));
        $this->set('_serialize', ['taggins']);
    }

    /**
     * View method
     *
     * @param string|null $id Taggin id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $taggin = $this->Taggins->get($id, [
            'contain' => []
        ]);

        $this->set('taggin', $taggin);
        $this->set('_serialize', ['taggin']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $taggin = $this->Taggins->newEntity();
        if ($this->request->is('post')) {
            $taggin = $this->Taggins->patchEntity($taggin, $this->request->data);
            if ($this->Taggins->save($taggin)) {
                $this->Flash->success(__('The taggin has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The taggin could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taggin'));
        $this->set('_serialize', ['taggin']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Taggin id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $taggin = $this->Taggins->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $taggin = $this->Taggins->patchEntity($taggin, $this->request->data);
            if ($this->Taggins->save($taggin)) {
                $this->Flash->success(__('The taggin has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The taggin could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taggin'));
        $this->set('_serialize', ['taggin']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Taggin id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $taggin = $this->Taggins->get($id);
        if ($this->Taggins->delete($taggin)) {
            $this->Flash->success(__('The taggin has been deleted.'));
        } else {
            $this->Flash->error(__('The taggin could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
