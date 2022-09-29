<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/dropify.min.css">
    <!--file nprogress-->
    <link href="<?php echo base_url(); ?>backend/dist/css/nprogress.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/ionicons.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/iCheck/flat/blue.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/morris/morris.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/colorpicker/bootstrap-colorpicker.css">

    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/daterangepicker/daterangepicker-bs3.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/custom_style.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/datepicker/css/bootstrap-datetimepicker.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/0.8.2/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>backend/dist/css/bootstrap-select.min.css">
    <script src="<?php echo base_url(); ?>backend/custom/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>backend/dist/js/moment.min.js"></script>
    <script src="<?php echo base_url(); ?>backend/datepicker/js/bootstrap-datetimepicker.js"></script>
    <script src="<?php echo base_url(); ?>backend/plugins/colorpicker/bootstrap-colorpicker.js"></script>
    <script src="<?php echo base_url(); ?>backend/datepicker/date.js"></script>
    <script src="<?php echo base_url(); ?>backend/dist/js/jquery-ui.min.js"></script>
    <script src="<?php echo base_url(); ?>backend/js/school-custom.js"></script>
    <script src="<?php echo base_url(); ?>backend/js/school-admin-custom.js"></script>
    <script src="<?php echo base_url(); ?>backend/js/sstoast.js"></script>
    <title>Document</title>
</head>

<body>
    <?php

    $currency_symbol = $this->customlib->getSchoolCurrencyFormat();
    ?>
    <style type="text/css">
        /* .table td:last-child, th:last-child {float: none;text-align: start;} */
        #size {
            margin-top: 50px;
        }

        #center {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
        }
    </style>
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12">
                <section class="content-header text-center" id="size" style="padding-right: 0;">
                    <h1>
                        <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('student_information'); ?>
                        <small><?php echo $this->lang->line('student1'); ?></small>
                    </h1>

                </section>
            </div>

            <!-- /.control-sidebar -->
        </div>

        <section class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box-body box-profile">
                            <?php
                            if ($sch_setting->student_photo) { ?>
                                <img class="pull-right" width="33px" height="33px" src="<?php
                                                                                        if (!empty($student["image"])) {
                                                                                            echo base_url() . $student["image"];
                                                                                        } else {
                                                                                            if ($student['gender'] == 'Female') {
                                                                                                echo base_url() . "uploads/student_images/default_female.jpg";
                                                                                            } else {
                                                                                                echo base_url() . "uploads/student_images/default_male.jpg";
                                                                                            }
                                                                                        }
                                                                                        ?>" alt="User profile picture">
                            <?php } ?>
                            <h3 class="profile-username">
                                <?php echo $this->customlib->getFullName($student['firstname'], $student['middlename'], $student['lastname'], $sch_setting->middlename, $sch_setting->lastname); ?>
                            </h3>

                            <table class="table table-hover table-striped tmb0">
                                <tbody>


                                    <tr>
                                        <td><?php echo $this->lang->line('admission_no') ?></td>
                                        <td><?php echo $student['admission_no']; ?></td>
                                    </tr>
                                    <?php if ($sch_setting->roll_no) { ?>
                                        <tr>
                                            <td><?php echo $this->lang->line('roll_no') ?></td>
                                            <td><?php echo $student['roll_no']; ?></td>
                                        </tr>
                                    <?php } ?>
                                    <tr>
                                        <td><?php echo $this->lang->line('class'); ?></td>
                                        <td><?php echo $student['class'] . " (" . $session . ")"; ?></td>
                                    </tr>

                                    <tr>
                                        <td><?php echo $this->lang->line('section'); ?></td>
                                        <td><?php echo $student['section']; ?></td>
                                    </tr>
                                    <?php if ($sch_setting->rte) { ?>
                                        <tr>
                                            <td><?php echo $this->lang->line('rte'); ?></td>
                                            <td><?php echo $student['rte']; ?></td>
                                        </tr>
                                    <?php } ?>
                                    <tr>
                                        <td><?php echo $this->lang->line('gender'); ?></td>
                                        <td><?php echo $this->lang->line(strtolower($student['gender'])); ?></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <?php
                    if (!empty($siblings)) {
                    ?>
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title"><?php echo $this->lang->line('sibling'); ?></h3>
                            </div>
                            <!-- /.box-header -->

                            <div class="box-body">
                                <?php
                                foreach ($siblings as $sibling_key => $sibling_value) {
                                ?>
                                    <div class="box box-widget widget-user-2">
                                        <!-- Add the bg color to the header using any of the bg-* classes -->
                                        <div class="siblingview">
                                            <img class="" src="<?php echo base_url() . $sibling_value->image; ?>" alt="User Avatar">
                                            <h4><a href="<?php echo site_url('student/view/' . $sibling_value->id) ?>"><?php echo $this->customlib->getFullName($sibling_value->firstname, $sibling_value->middlename, $sibling_value->lastname, $sch_setting->middlename, $sch_setting->lastname); ?></a>
                                            </h4>
                                        </div>
                                        <div class="box-footer no-padding">
                                            <ul class="list-group list-group-unbordered">
                                                <li class="list-group-item">
                                                    <b><?php echo $this->lang->line('admission_no'); ?></b> <a class="pull-right text-aqua"><?php echo $sibling_value->admission_no; ?></a>
                                                </li>
                                                <li class="list-group-item">
                                                    <b><?php echo $this->lang->line('class'); ?></b> <a class="pull-right text-aqua"><?php echo $sibling_value->class; ?></a>
                                                </li>
                                                <li class="list-group-item">
                                                    <b><?php echo $this->lang->line('section'); ?></b> <a class="pull-right text-aqua"><?php echo $sibling_value->section; ?></a>

                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                <?php
                                }
                                ?>

                            </div>
                            <!-- /.box-body -->
                        </div>

                    <?php
                    }
                    ?>

                </div>
                <div class="col-md-12">

                    <div class="nav-tabs-custom theme-shadow">
                        <div class="tab-content">
                            <div class="tab-pane active" id="activity">
                                <div class="tshadow mb25 bozero">
                                    <div class="table-responsive around10 pt0">
                                        <table class="table table-responsive with-bordered">
                                            <tbody>
                                                <?php if ($sch_setting->admission_date) {  ?>
                                                    <tr>
                                                        <td class="col-md-4">
                                                            <?php echo $this->lang->line('admission_date'); ?></td>
                                                        <td class="col-md-5">
                                                            <?php
                                                            if (!empty($student['admission_date'])) {

                                                                echo date($this->customlib->dateformat($student['admission_date']));
                                                            }
                                                            ?></td>
                                                    </tr>
                                                <?php } ?>
                                                <tr>
                                                    <td><?php echo $this->lang->line('date_of_birth'); ?></td>
                                                    <td><?php
                                                        if (!empty($student['admission_date']) && $student['admission_date'] != '0000-00-00') {
                                                            echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($student['dob']));
                                                        }
                                                        ?></td>
                                                </tr>
                                                <?php if ($sch_setting->category) {  ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('category'); ?></td>
                                                        <td>
                                                            <?php
                                                            foreach ($category_list as $value) {
                                                                if ($student['category_id'] == $value['id']) {
                                                                    echo $value['category'];
                                                                }
                                                            }
                                                            ?>
                                                        </td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->mobile_no) {  ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('mobile_no'); ?></td>
                                                        <td><?php echo $student['mobileno']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->cast) {  ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('cast'); ?></td>
                                                        <td><?php echo $student['cast']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->religion) {  ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('religion'); ?></td>
                                                        <td><?php echo $student['religion']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->student_email) {  ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('email'); ?></td>
                                                        <td><?php echo $student['email']; ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('smart_card'); ?></td>
                                                        <td><?php echo $student['smart_card']; ?></td>
                                                    </tr>
                                                <?php } ?>
                                                <?php
                                                $cutom_fields_data = get_custom_table_values($student['id'], 'students');
                                                if (!empty($cutom_fields_data)) {
                                                    foreach ($cutom_fields_data as $field_key => $field_value) {
                                                ?>
                                                        <tr>
                                                            <td><?php echo $field_value->name; ?></td>
                                                            <td>
                                                                <?php
                                                                if (is_string($field_value->field_value) && is_array(json_decode($field_value->field_value, true)) && (json_last_error() == JSON_ERROR_NONE)) {
                                                                    $field_array = json_decode($field_value->field_value);
                                                                    echo "<ul class='student_custom_field'>";
                                                                    foreach ($field_array as $each_key => $each_value) {
                                                                        echo "<li>" . $each_value . "</li>";
                                                                    }
                                                                    echo "</ul>";
                                                                } else {
                                                                    $display_field = $field_value->field_value;

                                                                    if ($field_value->type == "link") {
                                                                        $display_field = "<a href=" . $field_value->field_value . " target='_blank'>" . $field_value->field_value . "</a>";
                                                                    }
                                                                    echo $display_field;
                                                                }
                                                                ?>
                                                            </td>
                                                        </tr>

                                                <?php
                                                    }
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tshadow mb25 bozero">
                                    <h3 class="pagetitleh2"><?php echo $this->lang->line('address'); ?>
                                        <?php echo $this->lang->line('detail'); ?></h3>
                                    <div class="table-responsive around10 pt0">
                                        <table class="table table-hover table-striped tmb0">
                                            <tbody>
                                                <?php if ($sch_setting->current_address) { ?>
                                                    <tr>
                                                        <td class="col-md-4">
                                                            <?php echo $this->lang->line('current_address'); ?></td>
                                                        <td class="col-md-5"><?php echo $student['current_address']; ?>
                                                        </td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->permanent_address) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('permanent_address'); ?></td>
                                                        <td><?php echo $student['permanent_address']; ?></td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="tshadow mb25 bozero">
                                    <?php if (($sch_setting->father_name) || ($sch_setting->father_phone) || ($sch_setting->father_occupation) || ($sch_setting->father_pic) || ($sch_setting->mother_name) || ($sch_setting->mother_phone) || ($sch_setting->mother_occupation) || ($sch_setting->mother_pic) || ($sch_setting->guardian_name) || ($sch_setting->guardian_occupation) || ($sch_setting->guardian_relation) || ($sch_setting->guardian_phone) || ($sch_setting->guardian_email) || ($sch_setting->guardian_pic) || ($sch_setting->guardian_address)) { ?>
                                        <h3 class="pagetitleh2"><?php echo $this->lang->line('parent'); ?> /
                                            <?php echo $this->lang->line('guardian_details'); ?> </h3>
                                        <div class="table-responsive around10 pt10">
                                            <table class="table table-hover table-striped tmb0">
                                                <?php if ($sch_setting->father_name) {  ?>
                                                    <tr>
                                                        <td class="col-md-4"><?php echo $this->lang->line('father_name'); ?>
                                                        </td>
                                                        <td class="col-md-5"><?php echo $student['father_name']; ?></td>
                                                        <td rowspan="3"><img class="profile-user-img img-responsive img-circle" width="33px" height="33px" src="<?php
                                                                                                                                                                if (!empty($student["father_pic"])) {
                                                                                                                                                                    echo base_url() . $student["father_pic"];
                                                                                                                                                                } else {
                                                                                                                                                                    echo base_url() . "uploads/student_images/no_image.png";
                                                                                                                                                                }
                                                                                                                                                                ?>"></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->father_phone) {  ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('father_phone'); ?></td>
                                                        <td><?php echo $student['father_phone']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->father_occupation) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('father_occupation'); ?></td>
                                                        <td><?php echo $student['father_occupation']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->mother_name) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('mother_name'); ?></td>
                                                        <td><?php echo $student['mother_name']; ?></td>
                                                        <td rowspan="3"><img class="profile-user-img img-responsive img-circle" width="33px" height="33px" src="<?php
                                                                                                                                                                if (!empty($student["mother_pic"])) {
                                                                                                                                                                    echo base_url() . $student["mother_pic"];
                                                                                                                                                                } else {
                                                                                                                                                                    echo base_url() . "uploads/student_images/no_image.png";
                                                                                                                                                                }
                                                                                                                                                                ?>"></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->mother_phone) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('mother_phone'); ?></td>
                                                        <td><?php echo $student['mother_phone']; ?></td>

                                                    </tr>
                                                <?php }
                                                if ($sch_setting->mother_occupation) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('mother_occupation'); ?></td>
                                                        <td><?php echo $student['mother_occupation']; ?></td>
                                                    </tr>
                                                <?php } ?>
                                                <tr>

                                                    <td><?php if ($sch_setting->guardian_name) { ?><?php echo $this->lang->line('guardian_name');
                                                                                                } ?>
                                                    </td>
                                                    <td><?php if ($sch_setting->guardian_name) { ?><?php echo $student['guardian_name'];
                                                                                                } ?>
                                                    </td>


                                                    <td rowspan="3">
                                                        <?php if ($sch_setting->guardian_pic) { ?><img class="profile-user-img img-responsive img-circle" width="33px" height="33px" src="<?php
                                                                                                                                                                                            if (!empty($student["guardian_pic"])) {
                                                                                                                                                                                                echo base_url() . $student["guardian_pic"];
                                                                                                                                                                                            } else {
                                                                                                                                                                                                echo base_url() . "uploads/student_images/no_image.png";
                                                                                                                                                                                            }
                                                                                                                                                                                            ?>"> <?php }

                                                        ?></td>

                                                </tr>
                                                <?php if ($sch_setting->guardian_email) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('guardian_email'); ?></td>
                                                        <td><?php echo $student['guardian_email']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->guardian_relation) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('guardian_relation'); ?></td>
                                                        <td><?php echo $student['guardian_relation']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->guardian_phone) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('guardian_phone'); ?></td>
                                                        <td><?php echo $student['guardian_phone']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->guardian_occupation) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('guardian_occupation'); ?></td>
                                                        <td><?php echo $student['guardian_occupation']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->guardian_address) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('guardian_address'); ?></td>
                                                        <td><?php echo $student['guardian_address']; ?></td>
                                                    </tr>
                                                <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    <?php } ?>
                                </div>
                                <?php if ($sch_setting->route_list) { ?>
                                    <?php
                                    if ($this->module_lib->hasActive('transport')) {

                                        if ($student['vehroute_id'] != 0) {
                                    ?>
                                            <div class="tshadow mb25  bozero">
                                                <h3 class="pagetitleh2">
                                                    <?php echo $this->lang->line('route') . " " . $this->lang->line('details') ?>
                                                </h3>

                                                <div class="table-responsive around10 pt0">
                                                    <table class="table table-hover table-striped tmb0">
                                                        <tbody>

                                                            <tr>
                                                                <td class="col-md-4"><?php echo $this->lang->line('route'); ?>
                                                                </td>
                                                                <td class="col-md-5"><?php echo $student['route_title']; ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="col-md-4">
                                                                    <?php echo $this->lang->line('vehicle_no'); ?></td>
                                                                <td class="col-md-5"><?php echo $student['vehicle_no']; ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td><?php echo $this->lang->line('driver_name'); ?></td>
                                                                <td><?php echo $student['driver_name']; ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td><?php echo $this->lang->line('driver_contact'); ?></td>
                                                                <td><?php echo $student['driver_contact']; ?></td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                <?php
                                        }
                                    }
                                }
                                ?>
                                <?php if ($sch_setting->hostel_id) {
                                    if ($this->module_lib->hasActive('hostel')) {

                                        if ($student['hostel_room_id'] != 0) {
                                ?>
                                            <div class="tshadow mb25  bozero">
                                                <h3 class="pagetitleh2">
                                                    <?php echo $this->lang->line('hostel') . " " . $this->lang->line('details') ?>
                                                </h3>

                                                <div class="table-responsive around10 pt0">
                                                    <table class="table table-hover table-striped tmb0">
                                                        <tbody>
                                                            <tr>
                                                                <td class="col-md-4"><?php echo $this->lang->line('hostel'); ?>
                                                                </td>
                                                                <td class="col-md-5"><?php echo $student['hostel_name']; ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="col-md-4"><?php echo $this->lang->line('room_no'); ?>
                                                                </td>
                                                                <td class="col-md-5"><?php echo $student['room_no']; ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="col-md-4">
                                                                    <?php echo $this->lang->line('room_type'); ?></td>
                                                                <td class="col-md-5"><?php echo $student['room_type']; ?></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                <?php
                                        }
                                    }
                                }
                                ?>
                                <div class="tshadow mb25  bozero">
                                    <h3 class="pagetitleh2">
                                        <?php echo $this->lang->line('miscellaneous_details'); ?></h3>
                                    <div class="table-responsive around10 pt0">
                                        <table class="table table-hover table-striped tmb0">
                                            <tbody>
                                                <?php if ($sch_setting->is_blood_group) { ?>
                                                    <tr>
                                                        <td class="col-md-4">
                                                            <?php echo $this->lang->line('blood_group'); ?></td>
                                                        <td class="col-md-5"><?php echo $student['blood_group']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->is_student_house) { ?>
                                                    <tr>
                                                        <td class="col-md-4"><?php echo $this->lang->line('house'); ?>
                                                        </td>
                                                        <td class="col-md-5"><?php echo $student['house_name']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->student_height) {  ?>
                                                    <tr>
                                                        <td class="col-md-4"><?php echo $this->lang->line('height'); ?>
                                                        </td>
                                                        <td class="col-md-5"><?php echo $student['height']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->student_weight) { ?>
                                                    <tr>
                                                        <td class="col-md-4"><?php echo $this->lang->line('weight'); ?>
                                                        </td>
                                                        <td class="col-md-5"><?php echo $student['weight']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->measurement_date) { ?>
                                                    <tr>
                                                        <td class="col-md-4">
                                                            <?php echo $this->lang->line('measurement_date'); ?></td>
                                                        <td class="col-md-5"><?php
                                                                                if (!empty($student['measurement_date']) && $student['measurement_date'] != '0000-00-00') {
                                                                                    echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($student['measurement_date']));
                                                                                }
                                                                                ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->previous_school_details) {  ?>
                                                    <tr>
                                                        <td class="col-md-4">
                                                            <?php echo $this->lang->line('previous_school_details'); ?>
                                                        </td>
                                                        <td class="col-md-5"><?php echo $student['previous_school']; ?>
                                                        </td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->national_identification_no) { ?>
                                                    <tr>
                                                        <td class="col-md-4">
                                                            <?php echo $this->lang->line('national_identification_no'); ?>
                                                        </td>
                                                        <td class="col-md-5"><?php echo $student['adhar_no']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->local_identification_no) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('local_identification_no'); ?>
                                                        </td>
                                                        <td><?php echo $student['samagra_id']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->bank_account_no) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('bank_account_no'); ?></td>
                                                        <td><?php echo $student['bank_account_no']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->ifsc_code) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('bank_name'); ?></td>
                                                        <td><?php echo $student['bank_name']; ?></td>
                                                    </tr>
                                                <?php }
                                                if ($sch_setting->ifsc_code) { ?>
                                                    <tr>
                                                        <td><?php echo $this->lang->line('ifsc_code'); ?></td>
                                                        <td><?php echo $student['ifsc_code']; ?></td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <?php
                            // echo '<pre>';print_r($student);echo '</pre>';die();
                            ?>

                        </div>
                    </div>
                </div>
            </div>
    </div>
    </section>
    </div>

</body>

</html>
<script type="text/javascript">
    $("#myTimelineButton").click(function() {
        $("#reset").click();
        $('.transport_fees_title').html(
            "<b><?php echo $this->lang->line('add'); ?> <?php echo $this->lang->line('timeline'); ?></b>");
        $('#myTimelineModal').modal({
            backdrop: 'static',
            keyboard: false,
            show: true

        });
    });
    $(".myTransportFeeBtn").click(function() {
        $("span[id$='_error']").html("");
        $('#transport_amount').val("");
        $('#transport_amount_discount').val("0");
        $('#transport_amount_fine').val("0");
        var student_session_id = $(this).data("student-session-id");
        $('.transport_fees_title').html("<b><?php echo $this->lang->line('upload_documents'); ?></b>");
        $('#transport_student_session_id').val(student_session_id);
        $('#myTransportFeesModal').modal({
            backdrop: 'static',
            keyboard: false,
            show: true

        });
    });
</script>



<script type="text/javascript">
    $(document).ready(function(e) {

        $("#timelineform").on('submit', (function(e) {
            var student_id = $("#student_id").val();

            e.preventDefault();
            $.ajax({
                url: "<?php echo site_url("admin/timeline/add") ?>",
                type: "POST",
                data: new FormData(this),
                dataType: 'json',
                contentType: false,
                cache: false,
                processData: false,
                success: function(data) {

                    if (data.status == "fail") {

                        var message = "";
                        $.each(data.error, function(index, value) {

                            message += value;
                        });
                        errorMsg(message);
                    } else {

                        successMsg(data.message);

                        $.ajax({
                            url: '<?php echo base_url(); ?>admin/timeline/student_timeline/' +
                                student_id,
                            success: function(res) {
                                $('#timeline_list').html(res);

                                $('#myTimelineModal').modal('toggle');
                            },
                            error: function() {
                                alert("Fail")
                            }
                        });
                        window.location.reload(true);
                    }

                },
                error: function(e) {
                    alert("Fail");
                    console.log(e);
                }
            });

        }));
    });

    function delete_timeline(id) {

        var student_id = $("#student_id").val();
        if (confirm('<?php echo $this->lang->line("delete_confirm") ?>')) {

            $.ajax({
                url: '<?php echo base_url(); ?>admin/timeline/delete_timeline/' + id,
                success: function(res) {
                    $.ajax({
                        url: '<?php echo base_url(); ?>admin/timeline/student_timeline/' + student_id,
                        success: function(res) {
                            $('#timeline_list').html(res);

                        },
                        error: function() {
                            alert("Fail")
                        }
                    });

                },
                error: function() {
                    alert("Fail")
                }
            });
        }
    }


    function disable_student(id) {
        if (confirm("<?php echo $this->lang->line('are_you_sure_you_want_to_disable_this_student') ?>")) {
            $('#disstudent_id').val(id);
            $('#disable_modal').modal('show');
        }
    }

    $("#disable_form").on('submit', (function(e) {
        e.preventDefault();
        var id = $('#disstudent_id').val();
        var $this = $(this).find("button[type=submit]:focus");

        $.ajax({
            url: "<?php echo site_url("student/disable_reason") ?>",
            type: "POST",
            data: new FormData(this),
            dataType: 'json',
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function() {
                $this.button('loading');

            },
            success: function(res) {

                if (res.status == "fail") {

                    var message = "";
                    $.each(res.error, function(index, value) {

                        message += value;
                    });
                    errorMsg(message);

                } else {

                    successMsg(res.message);

                    window.location.reload(true);
                }
            },
            error: function(xhr) { // if error occured
                alert("Error occured.please try again");
                $this.button('reset');
            },
            complete: function() {
                $this.button('reset');
            }

        });
    }));

    function disable(id) {


        if (confirm("Are you sure you want to disable this record.")) {
            var student_id = '<?php echo $student["id"] ?>';
            $.ajax({
                type: "post",
                url: base_url + "student/getUserLoginDetails",
                data: {
                    'student_id': student_id
                },
                dataType: "json",
                success: function(response) {

                    var userid = response.id;
                    changeStatus(userid, 'no', 'student');

                }
            });

        } else {
            return false;
        }

    }

    function enable(id, status, role) {
        if (confirm(
                "<?php echo $this->lang->line('are_you_sure') . ' ' . $this->lang->line('you_want_to_enable_this_record'); ?>"
            )) {
            var student_id = '<?php echo $student["id"] ?>';

            $.ajax({
                type: "post",
                url: base_url + "student/getUserLoginDetails",
                data: {
                    'student_id': student_id
                },
                dataType: "json",
                success: function(response) {

                    var userid = response.id;

                    changeStatus(userid, 'yes', 'student');


                }
            });

            $.ajax({
                type: "post",
                url: base_url + "student/enablestudent/" + student_id,
                data: {
                    'student_id': student_id
                },
                dataType: "json",
                success: function(data) {

                    window.location.reload(true);

                }
            });


        } else {
            return false;
        }

    }

    function changeStatus(rowid, status = 'no', role = 'student') {

        var base_url = '<?php echo base_url() ?>';

        $.ajax({
            type: "POST",
            url: base_url + "admin/users/changeStatus",
            data: {
                'id': rowid,
                'status': status,
                'role': role
            },
            dataType: "json",
            success: function(data) {
                successMsg(data.msg);
            }
        });
    }
    $(document).ready(function() {
        $.extend($.fn.dataTable.defaults, {
            searching: false,
            ordering: false,
            paging: false,
            bSort: false,
            info: false
        });
    });

    function send_password() {
        var base_url = '<?php echo base_url() ?>';
        var student_id = '<?php echo $student['id']; ?>';
        var username = '<?php echo $student['username']; ?>';
        var password = '<?php echo $student['password']; ?>';
        var contact_no = '<?php echo $student['mobileno']; ?>';
        var email = '<?php echo $student['email']; ?>';

        $.ajax({
            type: "post",
            url: base_url + "student/sendpassword",
            data: {
                student_id: student_id,
                username: username,
                password: password,
                contact_no: contact_no,
                email: email
            },

            success: function(response) {
                successMsg('<?php echo $this->lang->line('message_successfully_sent'); ?>');
            }
        });

    }

    function send_parent_password() {
        var base_url = '<?php echo base_url() ?>';
        var student_id = '<?php echo $student['id']; ?>';
        var username = '<?php echo $guardian_credential['username']; ?>';
        var password = '<?php echo $guardian_credential['password']; ?>';
        var contact_no = '<?php echo $student['guardian_phone']; ?>';
        var email = '<?php echo $student['guardian_email']; ?>';

        $.ajax({
            type: "post",
            url: base_url + "student/send_parent_password",
            data: {
                student_id: student_id,
                username: username,
                password: password,
                contact_no: contact_no,
                email: email
            },

            success: function(response) {
                successMsg('<?php echo $this->lang->line('message_successfully_sent'); ?>');
            }
        });
    }


    $(document).on('click', '.schedule_modal', function() {
        $('.modal-title_logindetail').html("");
        $('.modal-title_logindetail').html("<?php echo $this->lang->line('login_details'); ?>");
        var base_url = '<?php echo base_url() ?>';
        var student_id = '<?php echo $student["id"] ?>';
        var student_name =
            '<?php echo $this->customlib->getFullName($student["firstname"], $student["middlename"], $student["lastname"], $sch_setting->middlename, $sch_setting->lastname);  ?>';

        $.ajax({
            type: "post",
            url: base_url + "student/getlogindetail",
            data: {
                'student_id': student_id
            },
            dataType: "json",
            success: function(response) {
                var data = "";
                data += '<div class="col-md-12">';
                data += '<div class="table-responsive">';
                data += '<p class="lead text text-center">' + student_name + '</p>';
                data += '<table class="table table-hover">';
                data += '<thead>';
                data += '<tr>';
                data += '<th>' + "<?php echo $this->lang->line('user_type'); ?>" + '</th>';
                data += '<th class="text text-center">' +
                    "<?php echo $this->lang->line('username'); ?>" + '</th>';
                data += '<th class="text text-center">' +
                    "<?php echo $this->lang->line('password'); ?>" + '</th>';
                data += '</tr>';
                data += '</thead>';
                data += '<tbody>';
                $.each(response, function(i, obj) {
                    data += '<tr>';
                    data += '<td><b>' + firstToUpperCase(obj.role) + '</b></td>';
                    data += '<input type=hidden name=userid id=userid value=' + obj.id + '>';
                    data += '<td class="text text-center">' + obj.username + '</td> ';
                    data += '<td class="text text-center">' + obj.password + '</td> ';
                    data += '</tr>';
                });
                data += '</tbody>';
                data += '</table>';
                data += '<b class="lead text text-danger" style="font-size:14px;"> ' +
                    "<?php echo $this->lang->line('login_url'); ?>" + ': ' + base_url +
                    'site/userlogin</b>';
                data += '</div>  ';
                data += '</div>  ';
                $('.modal-body_logindetail').html(data);
                $("#scheduleModal").modal('show');
            }
        });
    });

    function firstToUpperCase(str) {
        return str.substr(0, 1).toUpperCase() + str.substr(1);
    }

    $(document).ready(function() {
        getExamResult();
        $('.detail_popover').popover({
            placement: 'right',
            title: '',
            trigger: 'hover',
            container: 'body',
            html: true,
            content: function() {
                return $(this).closest('td').find('.fee_detail_popover').html();
            }
        });
    });

    function getExamResult(student_session_id) {
        if (student_session_id != "") {
            $('.examgroup_result').html("");

            $.ajax({
                type: "POST",
                url: baseurl + "admin/examresult/getStudentCurrentResult",
                data: {
                    'student_session_id': 17
                },
                dataType: "JSON",
                beforeSend: function() {

                },
                success: function(data) {
                    $('.examgroup_result').html(data.result);
                },
                complete: function() {

                }
            });
        }
    }
</script>

<script type="text/javascript">
    $(document).on('change', '#exam_group_id', function() {
        var exam_group_id = $(this).val();
        if (exam_group_id != "") {
            $('#exam_id').html("");

            var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
            $.ajax({
                type: "POST",
                url: baseurl + "admin/examgroup/getExamsByExamGroup",
                data: {
                    'exam_group_id': exam_group_id
                },
                dataType: "JSON",
                beforeSend: function() {
                    $('#exam_id').addClass('dropdownloading');
                },
                success: function(data) {
                    console.log(data);
                    $.each(data.result, function(i, obj) {

                        div_data += "<option value=" + obj.id + ">" + obj.exam + "</option>";
                    });
                    $('#exam_id').append(div_data);
                },
                complete: function() {
                    $('#exam_id').removeClass('dropdownloading');
                }
            });
        }
    });

    // this is the id of the form
    $("form#form_examgroup").submit(function(e) {
        e.preventDefault(); // avoid to execute the actual submit of the form.
        var form = $(this);
        var url = form.attr('action');
        var submit_button = $("button[type=submit]");
        $.ajax({
            type: "POST",
            url: url,
            dataType: 'JSON',
            data: form.serialize(), // serializes the form's elements.
            beforeSend: function() {
                submit_button.button('loading');
            },
            success: function(data) {
                $('.examgroup_result').html(data.result);
            },
            error: function(xhr) { // if error occured
                alert("Error occured.please try again");
                submit_button.button('reset');
            },
            complete: function() {
                submit_button.button('reset');
            }
        });

    });
    $(document).ready(function(e) {

        $("#form1").on('submit', (function(e) {

            e.preventDefault();
            $.ajax({
                url: "<?php echo site_url("student/create_doc") ?>",
                type: "POST",
                data: new FormData(this),
                dataType: 'json',
                contentType: false,
                cache: false,
                processData: false,
                success: function(res) {

                    if (res.status == "fail") {

                        var message = "";
                        $.each(res.error, function(index, value) {

                            message += value;
                        });
                        errorMsg(message);

                    } else {

                        successMsg(res.message);

                        window.location.reload(true);
                    }
                }
            });

        }));

    });
</script>

<?php
function findGradePoints($exam_grade, $exam_type, $percentage)
{

    foreach ($exam_grade as $exam_grade_key => $exam_grade_value) {
        if ($exam_grade_value['exam_key'] == $exam_type) {

            if (!empty($exam_grade_value['exam_grade_values'])) {
                foreach ($exam_grade_value['exam_grade_values'] as $grade_key => $grade_value) {
                    if ($grade_value->mark_from >= $percentage && $grade_value->mark_upto <= $percentage) {
                        return $grade_value->point;
                    }
                }
            }
        }
    }
    return 0;
}

function findExamGrade($exam_grade, $exam_type, $percentage)
{

    foreach ($exam_grade as $exam_grade_key => $exam_grade_value) {
        if ($exam_grade_value['exam_key'] == $exam_type) {

            if (!empty($exam_grade_value['exam_grade_values'])) {
                foreach ($exam_grade_value['exam_grade_values'] as $grade_key => $grade_value) {
                    if ($grade_value->mark_from >= $percentage && $grade_value->mark_upto <= $percentage) {
                        return $grade_value->name;
                    }
                }
            }
        }
    }
    return "";
}

function getConsolidateRatio($exam_connection_list, $examid, $get_marks)
{

    if (!empty($exam_connection_list)) {
        foreach ($exam_connection_list as $exam_connection_key => $exam_connection_value) {

            if ($exam_connection_value->exam_group_class_batch_exams_id == $examid) {
                return ($get_marks * $exam_connection_value->exam_weightage) / 100;
            }
        }
    }
    return 0;
}

function getCalculatedExamGradePoints($array, $exam_id, $exam_grade, $exam_type)
{

    $object              = new stdClass();
    $return_total_points = 0;
    $return_total_exams  = 0;
    if (!empty($array)) {

        // print_r($array['exam_result_' . $exam_id]);
        if (!empty($array['exam_result_' . $exam_id])) {
            foreach ($array['exam_result_' . $exam_id] as $exam_key => $exam_value) {
                $return_total_exams++;
                $percentage_grade    = ($exam_value->get_marks * 100) / $exam_value->max_marks;
                $point               = findGradePoints($exam_grade, $exam_type, $percentage_grade);
                $return_total_points = $return_total_points + $point;
            }
        }
    }

    $object->total_points = $return_total_points;
    $object->total_exams  = $return_total_exams;

    return $object;
}

function getCalculatedExam($array, $exam_id)
{
    // echo "<pre/>";
    //                                                                                                    print_r($array);
    $object              = new stdClass();
    $return_max_marks    = 0;
    $return_get_marks    = 0;
    $return_credit_hours = 0;
    $return_exam_status  = false;
    if (!empty($array)) {
        $return_exam_status = 'pass';
        // print_r($array['exam_result_' . $exam_id]);
        if (!empty($array['exam_result_' . $exam_id])) {
            foreach ($array['exam_result_' . $exam_id] as $exam_key => $exam_value) {

                if ($exam_value->get_marks < $exam_value->min_marks || $exam_value->attendence != "present") {
                    $return_exam_status = "fail";
                }

                $return_max_marks    = $return_max_marks + ($exam_value->max_marks);
                $return_get_marks    = $return_get_marks + ($exam_value->get_marks);
                $return_credit_hours = $return_credit_hours + ($exam_value->credit_hours);
            }
        }
    }
    $object->credit_hours = $return_credit_hours;
    $object->get_marks    = $return_get_marks;
    $object->max_marks    = $return_max_marks;
    $object->exam_status  = $return_exam_status;
    return $object;
}


?>