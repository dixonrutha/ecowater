<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*
 *  ==============================================================================
 *  Author	: Ruseke Jr
 *  Email	: rusekeinno@gmail.com
 *  For		: Ecowater
 *  ==============================================================================
 */

class Ecolibrary{

    public function __construct(){
        $this->CI =& get_instance();
    }

    public function checkPermissions($screen = NULL){
        $this->CI->load->model('Subscriber_model');
        $user_group = '';
        $this->Subscriber_model->get_all_open_campus();
    }

    public function actionPermissions($action = NULL, $module = NULL)
    {
        if ($this->Owner || $this->Admin) {
            if ($this->Admin && stripos($action, 'delete') !== false) {
                return FALSE;
            }
            return TRUE;
        } elseif ($this->Customer || $this->Supplier) {
            return false;
        } else {
            if (!$module) {
                $module = $this->m;
            }
            if (!$action) {
                $action = $this->v;
            }
            //$gp = $this->site->checkPermissions();
            if ($this->GP[$module . '-' . $action] == 1) {
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }
}
