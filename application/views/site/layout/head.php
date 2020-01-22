<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

    <meta charset="UTF-8">
    <title><?php echo isset($title) ? $title : 'Bình Yên' ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<?php echo base_url('public/css/' . $template_f . 'base.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('public/css/' . $template_f . 'font-awesome/css/font-awesome.min.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('public/css/' . $template_f . 'styleTimeline.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('public/css/' . $template_f . 'owl.carousel.min.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('public/css/' . $template_f . 'owl.carousel.min.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('public/css/' . $template_f . 'owl.theme.default.min.css'); ?>">

<!--    $this->data['css'] = ['styleTimeline.css', 'owl.carousel.min.css', 'owl.theme.default.min.css'];-->


    <link href="<?php echo base_url('public/images/logo-t.png'); ?>" rel="shortcut icon">


<?php if (isset($css))
{
    foreach ($css as $row)
    {
        ?>
<!--        <link rel="stylesheet" href="--><?php //echo base_url('public/css/' . $template_f . '' . $row); ?><!--">-->
    <?php }
} ?>

    <script src="<?php echo base_url('public/js/' . $template_f . 'jquery.min.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/' . $template_f . 'jquery.validate.min.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/' . $template_f . 'bootstrap.min.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/' . $template_f . 'page.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/' . $template_f . 'main.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/' . $template_f . 'modernizr.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/' . $template_f . 'owl.carousel.min.js'); ?>"></script>
<!--    $this->data['js'] = ['main.js', 'modernizr.js', 'owl.carousel.min.js'];-->


<?php if (isset($js))
{
    foreach ($js as $row)
    {
        ?>
<!--        <script src="--><?php //echo base_url('public/js/' . $template_f . '' . $row); ?><!--"></script>-->
<!--        <script src="--><?php //echo base_url('public/js/' . $template_f . '' . $row); ?><!--"></script>-->
<!--        <script src="--><?php //echo base_url('public/js/' . $template_f . '' . $row); ?><!--"></script>-->
<!--        <script src="--><?php //echo base_url('public/js/' . $template_f . '' . $row); ?><!--"></script>-->
    <?php }
} ?>