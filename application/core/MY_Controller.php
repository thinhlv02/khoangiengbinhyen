<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

Class MY_Controller extends CI_Controller
{
    var $_template_f = '';
    public $data = array();

    function __construct()
    {
        date_default_timezone_set('Etc/GMT+7');

        parent::__construct();
        $new_url = $this->uri->segment(1);
//        var_dump($new_url);
        $this->_template_f = TEMPLATE_FOLDER;
        var_dump($this->_template_f);

        switch ($new_url)
        {
            case 'admin' :
            {
//                pre('abc');
                $this->_check_login();
                $this->data['admin'] = $this->session->userdata('admin');
                break;
            }

            default:
            {
                $this->load->model('contact_model');
                $contact = $this->contact_model->get_info(1);
                $this->data['contact'] = $contact;
                $language = $this->session->userdata('language');
                if (!$language)
                {
                    $this->session->set_userdata('language', 'vn');
                    $language = 'vn';
                }
                $this->data['language'] = $language;
                $this->lang->load($language, 'language');
            }
        }

        // init and assign common value to view: language, common lang
        $preHeader = array();
//        $preHeader['common_lang'] = $this->_common_lang;
        $preHeader['template_f'] = $this->_template_f;
//        $preHeader['login_lang'] = $this->_login_lang;
//        $preHeader['language'] = $this->_langcode;
//        $preHeader['agencies'] = $this->_agencies;
//        $preHeader['contact'] = $this->_contact;
//        $preHeader['content'] = $this->_content;
//        $preHeader['user_login'] = $this->_user_login;
//        $preHeader['prices'] = $this->_prices;
//        $preHeader['products'] = $this->_products;
        // assign all common param to view
        $this->load->view($this->_template_f . 'preheader_view', $preHeader);
    }

    private function _check_login()
    {
        $controller = $this->uri->rsegment('1');
        $controller = strtolower($controller);

        $login = $this->session->userdata('login');
        //neu ma chua dang nhap,ma truy cap 1 controller khac login
        if (!$login && $controller != 'login')
        {
            redirect(base_url('admin/login'));
        }
        //neu ma admin da dang nhap thi khong cho phep vao trang login nua.
        if ($login && $controller == 'login')
        {
            redirect(base_url('admin/product'));
        }
    }
}