<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

    <meta charset="UTF-8">
    <title><?php echo isset($title) ? $title : 'Bình Yên' ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<?php echo base_url('public/css/base.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('public/css/font-awesome/css/font-awesome.min.css'); ?>">
    <link href="<?php echo base_url('public/images/logo-t.png'); ?>" rel="shortcut icon">
<?php if (isset($css))
{
    foreach ($css as $row)
    {
        ?>
        <link rel="stylesheet" href="<?php echo base_url('public/css/' . $row); ?>">
    <?php }
} ?>

    <script src="<?php echo base_url('public/js/jquery.min.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/jquery.validate.min.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/bootstrap.min.js'); ?>"></script>
    <script src="<?php echo base_url('public/js/page.js'); ?>"></script>

<?php if (isset($js))
{
    foreach ($js as $row)
    {
        ?>
        <script src="<?php echo base_url('public/js/' . $row); ?>"></script>
    <?php }
} ?>