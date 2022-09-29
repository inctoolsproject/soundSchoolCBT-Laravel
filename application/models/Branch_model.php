<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Branch_model extends MY_Model {

    public function __construct() {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }

    /**
     * This funtion takes id as a parameter and will fetch the record.
     * If id is not provided, then it will fetch all the records form the table.
     * @param int $id
     * @return mixed
     */
    public function get($id = null) {
        
        $this->db->select()->from('branches');
       
        if ($id != null) {
            $this->db->where('branches.id', $id);
        } else {
            $this->db->order_by('branches.id');
        }
        
        $query = $this->db->get();
        
        if ($id != null) {
            
            return $query->row_array();
        } else {
           
            return $query->result_array();
        }
        
    }

    /**
     * This function will delete the record based on the id
     * @param $id
     */
    public function remove($id) {
        $this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        $this->db->where('id', $id);
        $this->db->delete('branches');
        $message = DELETE_RECORD_CONSTANT . " On branches id " . $id;
        $action = "Delete";
        $record_id = $id;
        $this->log($message, $record_id, $action);
        //======================Code End==============================
        $this->db->trans_complete(); # Completing transaction
        /* Optional */
        if ($this->db->trans_status() === false) {
            # Something went wrong.
            $this->db->trans_rollback();
            return false;
        } else {
            //return $return_value;
        }
    }

    public function add($data) {
        $this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        if (isset($data['id'])) {
			
            $this->db->where('id', $data['id']);
            $this->db->update('branches', $data);
            $message = UPDATE_RECORD_CONSTANT . " On  branches id " . $data['id'];
            $action = "Update";
            $record_id = $data['id'];
            $this->log($message, $record_id, $action);
            //======================Code End==============================

            $this->db->trans_complete(); # Completing transaction
            /* Optional */

            if ($this->db->trans_status() === false) {
                # Something went wrong.
                $this->db->trans_rollback();
                return false;
            } else {
                //return $return_value;
            }
        }else{
			$this->db->insert('branches', $data);
			$insert_id = $this->db->insert_id();
			$message = INSERT_RECORD_CONSTANT . " On branches id " . $insert_id;
			$action = "Insert";
			$record_id = $insert_id;
			$this->log($message, $record_id, $action);
			$this->db->trans_complete(); # Completing transaction
        	/* Optional */

			if ($this->db->trans_status() === false) {
				# Something went wrong.
				$this->db->trans_rollback();
				return false;
			} else {
				//return $return_value;
			}
				return $insert_id;
		}
    }


}
