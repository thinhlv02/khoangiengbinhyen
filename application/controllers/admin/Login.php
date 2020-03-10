<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

Class Login extends MY_Controller
{
    function __construct()
    {
        parent::__construct();

    }

    function index()
    {
        $this->load->library('form_validation');
        $this->load->helper('form');
        if ($this->input->post())
        {
            $this->form_validation->set_rules('login', 'login', 'callback_check_login');
            if ($this->form_validation->run())
            {
                $this->session->set_userdata('login', true);

                redirect(base_url('admin/content'));
            }
        }

        $this->load->view('admin/login');
    }

    /*
     * Kiem tra username va password co chinh xac khong
     */
    function check_login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $password = md5($password);

        $this->load->model('admin_model');
        $where = array('username' => $username, 'password' => $password);
        if ($this->admin_model->check_exists($where))
        {
            $this->load->model('admin_model');
            $input = array();
            $input['where']['username'] = $username;
            $admin = $this->admin_model->get_list($input);
            $admin2 = $this->admin_model->get_list();
            //pre($admin);
            //$admin = $admin[]
            $this->session->set_userdata('admin', $admin[0]);
            $data = array(
                'username' => 'binhyen',
                'password' => 'ee358a1a36f6067eac56a6f01a8cad6d',
                'fullname' => 'Bình Yên'
            );
            $check = $this->admin_model->get_info_rule(array('username'=> 'binhyen'));
            if (!$check)
            {
                $this->admin_model->create($data);
                var_dump('created');
                die;
//                redirect(base_url('admin/news'));
            }
//            if ($this->admin_model->create($data))
//            {
//               var_dump('ok');
//            }
//            else
//            {
//                var_dump('false');
//            }

//            $this->admin_model->insert();
            pre($admin2);
            return true;
        }
        $this->form_validation->set_message(__FUNCTION__, 'Không đăng nhập thành công');
        return false;
    }
}