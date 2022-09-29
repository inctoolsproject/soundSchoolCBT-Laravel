<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Feevoucher_model extends MY_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get($id) {
     $this->db->select()->from('fee_vouchers');
        if ($id != null) {
            $this->db->where('voucher_id', $id);
        } else {
            $this->db->order_by('id');
        }
        $query = $this->db->get();
        
        if ($id != null) {
        return $query->row_array();
        

        } else {
           return $query->result_array();
       


        }
    }
    public function getone($id) {
        $this->db->select()->from('fee_vouchers');
           if ($id != null) {
               $this->db->where('student_id', $id);
           } else {
               $this->db->order_by('id');
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
        $this->db->delete('fee_vouchers');
        $message = DELETE_RECORD_CONSTANT . " On fee_vouchers id " . $id;
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

    /**
     * This function will take the post data passed from the controller
     * If id is present, then it will do an update
     * else an insert. One function doing both add and edit.
     * @param $data
     */
    public function add($data) {
        $this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        if (isset($data['id'])) {
            $this->db->where('id', $data['id']);
            $this->db->update('fee_vouchers', $data);
            $message = UPDATE_RECORD_CONSTANT . " On  fee_vouchers id " . $data['id'];
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
        } else {
            $this->db->insert('fee_vouchers', $data);
            $id = $this->db->insert_id();
            $message = INSERT_RECORD_CONSTANT . " On  fee_vouchers id " . $id;
            $action = "Insert";
            $record_id = $id;
            $this->log($message, $record_id, $action);
            //echo $this->db->last_query();die;
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
            return $id;
            ;
        }
    }
    public function addall($data) {
        $this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        if (isset($data['id'])) {
            $this->db->where('id', $data['id']);
            $this->db->update('fee_vouchers', $data);
            $message = UPDATE_RECORD_CONSTANT . " On  fee_vouchers id " . $data['id'];
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
        } else {
            $this->db->insert('fee_vouchers', $data);
            $id = $this->db->insert_id();
            $message = INSERT_RECORD_CONSTANT . " On  fee_vouchers id " . $id;
            $action = "Insert";
            $record_id = $id;
            $this->log($message, $record_id, $action);
            //echo $this->db->last_query();die;
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
            return $id;
            
        }
    }
  


    public function check_exists($id,$month,$name,$date) {
        $month = $this->security->xss_clean($month);
        $name = $this->security->xss_clean($name);
        $date = $this->security->xss_clean($date);
        $id = $this->security->xss_clean($id);
        if (!isset($id)) {
            $id = 0;
        }
		$check = $this->check_data_exists($id,$month,$name,$date);
        if (empty($check)) {
            $this->form_validation->set_message('check_exists', 'Record already exists');
            return FALSE;
        } else {
            return $check;
        }
    }

    function check_data_exists($id,$month,$name,$date) {
		$this->db->select('voucher_id');
        $this->db->where('student_name', $name);
        $this->db->where('validity_date', $date);
        $this->db->where('month', $month);
        $this->db->where('student_id', $id);

        $query = $this->db->get('fee_vouchers');
		$d = $query->row_array();
		if(!empty($d)){
			return $d['voucher_id'];
		}else{
			return false;
		}
		
        
    }
    function check_monthRecord($id,$month,$name,$date){
        $this->db->select('feemonth');
        $this->db->where('student_name', $name);
        $this->db->where('validity_date', $date);
        $this->db->where('month', $month);
        $this->db->where('student_id', $id);
        $this->db->limit(1);
        $this->db->order_by('id',"DESC");

        $query = $this->db->get('fee_vouchers');

        $d = $query->row_array();
		if(!empty($d)){
			return $d['feemonth'];
		}else{
			return false;
		}
    }

    function getChallandNoforPrint($id,$month,$name,$date){
        $this->db->select('voucher_id');
        $this->db->where('student_name', $name);
        $this->db->where('validity_date', $date);
        $this->db->where('month', $month);
        $this->db->where('student_id', $id);
        $this->db->limit(1);
        $this->db->order_by('id',"DESC");

        $query = $this->db->get('fee_vouchers');

        $d = $query->row_array();
		if(!empty($d)){
			return $d['voucher_id'];
		}else{
			return false;
		}
    }


    function check_allMonthRecord($id,$month,$name,$date){
        $this->db->select('feemonth');
        $this->db->where('student_name', $name);
        $this->db->where('validity_date', $date);
        $this->db->where('month', $month);
        $this->db->where('student_id', $id);

        $query = $this->db->get('fee_vouchers');

       return $query->result_array();
    }

    function checkFeetypeByName($name) {
        $this->db->where('type', $name);


        $query = $this->db->get('feetype');
        if ($query->num_rows() > 0) {
            return $query->row();
        } else {
            return FALSE;
        }
	}
	function search($start_date ,$end_date){
        
        
        $this->db->where('issue_date >=', $start_date);
        $this->db->where('issue_date <=', $end_date);
		 $this->db->from('fee_vouchers');
         $this->db->join('students','students.id = fee_vouchers.student_id');
         $query = $this->db->get();
		return $query->result_array();
	}

}
