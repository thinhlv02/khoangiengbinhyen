<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

Class Home extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('recruitment_model');
        $this->load->model('product_model');
        $this->load->model('feedback_model');
        $this->load->model('user_recruit_model');
        $this->load->model('email_recruit_model');
        $this->load->model('news_model');
        $this->load->model('content_model');
    }

    function index()
    {
        $product = $this->product_model->get_list();
        $news = $this->news_model->get_list();
        $intro_home = $this->content_model->get_list(array('where' => array('type' => 4)));
        $service = $this->content_model->get_list(array('where' => array('type' => 1)));
        $this->data['li_home'] = 1;
        $this->data['news'] = $news;
        $this->data['product'] = $product;
        $this->data['intro_home'] = $intro_home;
        $this->data['service'] = $service;
        $this->data['temp'] = $this->_template_f . 'home/home';
        $this->load->view($this->_template_f . 'layout/layout', $this->data);
//        pre($intro_home);
    }

    function language()
    {
        $language = $this->uri->segment(1);
        $uri2 = $this->uri->segment(2);
        $uri3 = $this->uri->segment(3);
//        pre($uri2.'-'.$uri3);
        if ($language == 'vn')
        {
            $this->session->set_userdata('language', 'vn');
        }
        else if ($language == 'en')
        {
            $this->session->set_userdata('language', 'en');
        }
        if ($uri3)
        {
            redirect(base_url($uri2 . '/' . $uri3));
        }
        else if ($uri2)
        {
            redirect(base_url($uri2));
        }
        else
        {
            redirect(base_url());
        }
    }

    public function intro()
    {
        $intro = $this->content_model->get_list(array('where' => array('type' => 2), 'order' => array('prioriti', 'ASC')));
        $styles = $this->content_model->get_list(array('where' => array('type' => 3)));
        $this->data['intro'] = $intro;
        $this->data['styles'] = $styles;
        $this->data['li_intro'] = 1;
        $this->data['title'] = 'Giới thiệu Khoan giếng bình yên';
//        $this->data['css'] = ['styleTimeline.css', 'owl.carousel.min.css', 'owl.theme.default.min.css'];
//        $this->data['js'] = ['main.js', 'modernizr.js', 'owl.carousel.min.js'];
        $this->data['temp'] = $this->_template_f . 'intro/intro';
        $this->load->view($this->_template_f . 'layout/layout', $this->data);
    }

    public function recruit()
    {
        $input = array();
        $type = $this->uri->segment(2);
        if ($type)
        {
            $arr = array();
            if ($type == 'ky-thuat.html')
            {
                $arr = array(10);//php, .net, js, mobile, ios, android
            }
            else if ($type == 'van-hanh-kiem-thu.html')
            {
                $arr = array(11);
            }
//            else if($type == 'kinh-doanh.html'){
//                $arr = array(9);
//            }
            $recruitment = $this->recruitment_model->get_list_by_department($arr);
        }
        else
        {
            $recruitment = $this->recruitment_model->get_list();
        }


//        $recruitmentWeb = array();
//        $recruitmentMobile = array();
//        $recruitmentTest = array();
//        foreach ($recruitment as $row){
//            if($row->department == 1){
//                $recruitmentWeb[] = $row;
//            }
//            else if($row->department == 2){
//                $recruitmentMobile[] = $row;
//            }
//            else{
//                $recruitmentTest[] = $row;
//            }
//        }
//        $this->data['recruitmentWeb'] = $recruitmentWeb;
//        $this->data['recruitmentMobile'] = $recruitmentMobile;
//        $this->data['recruitmentTest'] = $recruitmentTest;


        $this->data['recruitment'] = $recruitment;
        $this->data['li_recruitment'] = 1;
        $this->data['js'] = ['bootstrap-datepicker.js'];
        $this->data['recruit_temp'] = $this->_template_f . 'recruit/list';
        $this->data['temp'] = $this->_template_f . 'recruit/recruit';
        $this->load->view($this->_template_f . 'layout/layout', $this->data);
    }

    public function detailRecruit($slug = '', $id = -1)
    {
        $detail = $this->recruitment_model->get_info($id);
        if ($detail)
        {
            $this->data['detail'] = $detail;
        }
        else
        {
            redirect(base_url('tuyen-dung.html'));
        }
        $this->data['li_recruitment'] = 1;
        $this->data['recruit_temp'] = $this->_template_f . 'recruit/detail';
        $this->data['temp'] = $this->_template_f . 'recruit/recruit';
        $this->load->view($this->_template_f . 'layout/layout', $this->data);
    }

    public function regRecruit()
    {
        $status = "";
        $msg = "";

        $name = $this->input->post('txtNameReg');
        $email = $this->input->post('txtEmailReg');

        if ($name && $email)
        {
//            pre($email);
            $check_email = $this->email_recruit_model->get_total(array('where' => array('email' => $email)));
//            pre($check_email);
            if ($check_email > 0)
            {
                $status = "error";
                $msg = "Email đã được đăng ký";
            }
            else
            {
                $now = new DateTime();
                $dataSubmit = array(
                    'name' => $name,
                    'email' => $email,
                    'status' => 1,
                    'created' => $now->getTimestamp()
                );
                $this->email_recruit_model->create($dataSubmit);
                $status = "success";
            }
        }
        else
        {
            $status = "error";
            $msg = "Vui lòng điền đầy đủ các trường trước khi gửi!";
        }
        echo json_encode(array('status' => $status, 'msg' => $msg));
    }

    public function submitRecruit()
    {
        $status = "";
        $msg = "";

        $id_recruitment = $this->input->post('idRecruit');
        $name = $this->input->post('txtNameRecruit');
        $email = $this->input->post('txtEmailRecruit');
        $phone = $this->input->post('txtPhoneRecruit');
        $birthday = $this->input->post('txtBirthdayRecruit');
        $sex = $this->input->post('slSex');
//        $cv = $this->input->post('cv');
        $now = new DateTime();
        if ($name != '' && $email != '' && $phone != '' && $birthday != '' && $sex != '')
        {
            $config['upload_path'] = './upload';
            $config['allowed_types'] = 'jpg|png|jpeg|JPEG|doc|DOC|docx|DOCX|pdf';
            $this->load->library("upload", $config);
            if ($this->upload->do_upload('file_cv'))
            {
                $file_data = $this->upload->data();
                $dataSubmit = array(
                    'id_recruitment' => $id_recruitment,
                    'name' => $name,
                    'email' => $email,
                    'phone' => $phone,
                    'birthday' => $birthday,
                    'sex' => $sex,
                    'cv' => $file_data['file_name'],
                    'created' => $now->getTimestamp()
                );
//                pre($dataSubmit);
                $this->user_recruit_model->create($dataSubmit);
//                $msg = $this->upload->data();
                $status = 'success';
            }
            else
            {
                $status = 'error';
                $msg = $this->upload->display_errors('', '');
            }
        }
        else
        {
            $status = "error";
            $msg = "Vui lòng điền đầy đủ các trường trước khi gửi!";
        }
        echo json_encode(array('status' => $status, 'msg' => $msg));
    }

    public function feedback()
    {
        $name = $this->input->post('name');
        $email = $this->input->post('email');
        $message = $this->input->post('message');
        if ($name && $email && $message)
        {
            $now = new DateTime();
            $feedback = array(
                'name' => $name,
                'email' => $email,
                'message' => $message,
                'created' => $now->getTimestamp()
            );
            if ($this->feedback_model->create($feedback))
            {
                echo true;
            }
            else
            {
                echo false;
            }
        }
        else
        {
            echo false;
        }
    }

    public function contact()
    {
        $this->data['li_contact'] = 1;
        $this->data['temp'] = $this->_template_f . 'contact/contact';
        $this->load->view($this->_template_f . 'layout/layout', $this->data);
    }

    public function news($slug = '', $id = 0)
    {
        $detail = $this->news_model->get_info($id);
        if ($detail && $slug == create_slug($detail->title))
        {

        }
        else
        {
            redirect(base_url());
        }
        $news = $this->news_model->get_list(array('limit' => array(5, 0)));
        $this->data['detail'] = $detail;
        $this->data['news'] = $news;
        $this->data['temp'] = $this->_template_f . 'home/detail_news';
        $this->load->view($this->_template_f . 'layout/layout', $this->data);
    }
}