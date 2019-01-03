<?php
Class Product extends MY_Controller {
    function __construct() {
        parent::__construct();
        $this->load->model('product_model');
    }

    function index()
    {
        $product = $this->product_model->get_list();
        $this->data['product'] = $product;
        $this->data['temp'] = 'admin/product/index';
        $this->data['view'] = 'admin/product/product';
        $this->load->view('admin/layout', $this->data);
    }

    function add(){
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        if($this->input->post('btnAddProduct')){
            $created = new DateTime();
            $data_submit = array(
                'name' => $this->input->post('txtName'),
                'content' => $this->input->post('txtContent'),
                'icon' => $this->input->post('txtImage'),
                'link_iOS' => $this->input->post('txtLinkIos'),
                'link_android' => $this->input->post('txtLinkAndroid'),
                'link_windowphone' => $this->input->post('txtWindowPhone'),
                'created' => $created->getTimestamp()
            );
            if($this->product_model->create($data_submit)){
                $this->session->set_flashdata('message', 'Đăng bài thành công!');
                redirect(base_url('admin/product/add'));
            }
            else{
                $this->session->set_flashdata('message', 'Có lỗi xảy ra, vui lòng thử lại!');
                redirect(base_url('admin/product/add'));
            }
        }
        $this->data['temp'] = 'admin/product/index';
        $this->data['view'] = 'admin/product/add';
        $this->load->view('admin/layout', $this->data);
    }

    function edit(){
        $message = $this->session->flashdata('message');
        $this->data['message'] = $message;
        $id = $this->uri->segment(4);
        $product = $this->product_model->get_info($id);
        if(!$product){
            echo 'Đường dẫn không đúng!';
            return;
        }
        if($this->input->post('btnEditProduct')){
            $created = new DateTime();
            $data_submit = array(
                'name' => $this->input->post('txtName'),
                'content' => $this->input->post('txtContent'),
                'icon' => $this->input->post('txtImage'),
                'link_iOS' => $this->input->post('txtLinkIos'),
                'link_android' => $this->input->post('txtLinkAndroid'),
                'link_windowphone' => $this->input->post('txtWindowPhone'),
                'created' => $created->getTimestamp()
            );
            if($this->product_model->update($id, $data_submit)){
                $this->session->set_flashdata('message', 'Cập nhật thành công!');
                redirect(base_url('admin/product/edit/'.$id));
            }
            else{
                $this->session->set_flashdata('message', 'Có lỗi xảy ra, vui lòng thử lại!');
                redirect(base_url('admin/product/edit/'.$id));
            }
        }
        $this->data['product'] = $product;
        $this->data['temp'] = 'admin/product/index';
        $this->data['view'] = 'admin/product/edit';
        $this->load->view('admin/layout', $this->data);
    }

    function del(){
        $id = $this->uri->segment(4);
        if($this->product_model->get_info($id)){
            $this->product_model->delete($id);
            redirect(base_url('admin/product'));
        }
        else{
            redirect(base_url('admin/product'));
        }
    }
}