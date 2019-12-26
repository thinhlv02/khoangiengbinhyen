<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<section class="service">
    <div class="container">
        <div class="col-sm-12 col-md-12">
            <div class="title-section"><h2><?php echo $this->lang->line('service'); ?></h2></div>
            <div>
                <?php foreach ($service as $row){ ?>
                    <div class="col-sm-4 col-md-4 item-style">
<!--                        <i class="fa --><?php //echo $row->icon?><!-- icon-style" aria-hidden="true"></i>-->
                        <div class="img-news col-xs-12 col-sm-12 col-md-6"><img style="height: 100px;" src="<?php echo base_url('public/images/service/'.$row->img)?>"></div>
                        <div class="title-item-style"><?php echo $language == 'vn' ? $row->title : $row->title_en?></div><hr />
                        <div class="content-item-style" style="float: left">
                             <?php echo $language == 'vn' ? $row->content : $row->content_en?>
                        </div>
                    </div>
                <?php }?>
            </div>
        </div>
    </div>
</section>