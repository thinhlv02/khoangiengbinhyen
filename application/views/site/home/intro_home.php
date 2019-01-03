<section class="service">
    <div class="container">
        <div class="col-sm-12 col-md-12">
<!--            <div class="title-section"><h2>--><?php //echo $this->lang->line('service'); ?><!--</h2></div>-->
            <div class="title-section"><h2>CTY CP Đầu Tư Tư Vấn Bình Yên( 0908 902 902)</h2></div>
            <div>
                <?php foreach ($intro_home as $row){ ?>
                    <div class="col-sm-12 col-md-12 item-style">
<!--                        <i class="fa --><?php //echo $row->icon?><!-- icon-style" aria-hidden="true"></i>-->
<!--                        <div class="title-item-style">--><?php //echo $language == 'vn' ? $row->title : $row->title_en?><!--</div>-->
                        <div class="content-item-style">
                             <?php echo $language == 'vn' ? $row->content : $row->content_en?>
                        </div>
                    </div>
                <?php }?>
            </div>
        </div>
    </div>
</section>