<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class branch extends Admin_Controller {

    function __construct() {
		parent::__construct();
		$this->load->model('Branch_model');
    }

    function unauthorized() {
        $data = array();
        $this->load->view('layout/header', $data);
        $this->load->view('unauthorized', $data);
        $this->load->view('layout/footer', $data);
    }

    function index() {

        $this->session->set_userdata('top_menu', 'Academics');
        $this->session->set_userdata('sub_menu', 'branches/index');
        $data['title'] = 'Add Branch';
        $data['title_list'] = 'Branch List';

        $this->form_validation->set_rules(
                'branch', 'Branch', 'required'
        );
        
        if ($this->form_validation->run() == FALSE) {
            
        } else {
            $class = $this->input->post('branch');
            $branch_array = array(
                'name' => $this->input->post('branch')
            );
            $this->Branch_model->add($branch_array);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('success_message') . '</div>');
            redirect('admin/branch');
		}
        
		$data['vehroutelist'] = $this->Branch_model->get();
        

        $this->load->view('layout/header', $data);
        $this->load->view('branch/branchlist', $data);
        $this->load->view('layout/footer', $data);
	}
	function delete($id) {
        if (!$this->rbac->hasPrivilege('class', 'can_delete')) {
            access_denied();
        }
        $data['title'] = 'Fees Master List';
        $this->Branch_model->remove($id);
        redirect('admin/branch');
	}
	
	function edit($id) {
        if (!$this->rbac->hasPrivilege('class', 'can_edit')) {
            access_denied();
        }
        $this->session->set_userdata('top_menu', 'Academics');
        $this->session->set_userdata('sub_menu', 'branches/index');
        $data['title'] = 'Add Branch';
        $data['title_list'] = 'Branch List';

        $this->form_validation->set_rules(
                'branch', 'Branch', 'required'
        );
        $data['id'] = $id;
        

        $this->form_validation->set_rules(
                'branch', $this->lang->line('branch'),'required'
        );


        if ($this->form_validation->run() == FALSE) {
            $data['branch'] = $this->Branch_model->get($id);
            

            $data['vehroutelist'] = $this->Branch_model->get();
            $this->load->view('layout/header', $data);
            $this->load->view('branch/branch_edit', $data);
            $this->load->view('layout/footer', $data);
        } else {
            $branch_array =[
				'id' => $id,
				'name' => $this->input->post('branch')
			];
			$this->Branch_model->add($branch_array);

            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('update_message') . '</div>');
            redirect('admin/branch');
        }
    }

}
