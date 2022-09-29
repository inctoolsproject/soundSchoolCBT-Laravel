<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
//print_r();die;
?>
<div class="content-wrapper">
    <section class="content-header"></section>
    <!-- Main content -->
    <section class="content">
        <?php $this->load->view('reports/_finance'); ?>
        <div class="row">
            <div class="col-md-12">
                <div class="box removeboxmius">
                    <div class="box-header ptbnull"></div>
                    <div class="box-header ">
                        <h3 class="box-title"><i class="fa fa-search"></i> <?php echo $this->lang->line('select_criteria'); ?></h3>
                    </div>

                    <form role="form" action="<?php echo site_url('studentfee/collection_report') ?>" method="post" class="">
                        <div class="box-body row">
                            <?php echo $this->customlib->getCSRF(); ?>
                            <div class="col-sm-4 col-lg-4 col-md-4">
                                <div class="form-group">
                                    <label><?php echo $this->lang->line('search') . " " . $this->lang->line('type'); ?><small class="req"> *</small></label>
                                    <select class="form-control" name="search_type" onchange="showdate(this.value)">

                                        <?php foreach ($searchlist as $key => $search) {
                                            ?>
                                            <option value="<?php echo $key ?>" <?php
                                            if ((isset($search_type)) && ($search_type == $key)) {
                                                echo "selected";
                                            }
                                            ?>><?php echo $search ?></option>
                                                <?php } ?>
                                    </select>
                                    <span class="text-danger"><?php echo form_error('search_type'); ?></span>
                                </div>
                            </div>
                            <div class="col-sm-4 col-lg-4 col-md-4">
                                <div class="form-group">
                                    <label><?php echo $this->lang->line('collect') . " " . $this->lang->line('by'); ?><small class="req"> *</small></label>
                                    <select class="form-control"  name="collect_by" >
                                        <option value=""><?php echo $this->lang->line('select') ?></option>
                                        <?php
                                        foreach ($collect_by as $key => $value) {
                                            ?>
                                            <option value="<?php echo $key ?>" <?php
                                            if ((isset($received_by)) && ($received_by == $key)) {
                                                echo "selected";
                                            }
                                            ?> ><?php echo $value ?></option>
                                                <?php } ?>
                                    </select>
                                    <span class="text-danger"><?php echo form_error('collect_by'); ?></span>
                                </div>
                            </div>
                            <div id='date_result'>

                            </div>
                            <div class="col-sm-4 col-lg-4 col-md-4">
                                <div class="form-group">
                                    <label><?php echo $this->lang->line('group') . " " . $this->lang->line('by'); ?><small class="req"> *</small></label>
                                    <select class="form-control" name="group" >
                                        <?php foreach ($group_by as $key => $value) {
                                            ?>
                                            <option value="<?php echo $key ?>" <?php
                                            if ((isset($group_byid)) && ($group_byid == $key)) {
                                                echo "selected";
                                            }
                                            ?> ><?php echo $value ?></option>
                                                <?php } ?>
                                    </select>
                                    <span class="text-danger"><?php echo form_error('group'); ?></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1"><?php echo $this->lang->line('class'); ?><small class="req"> *</small></label>
                                        <select autofocus="" id="class_id" name="class_id" class="form-control" >
                                            <option value=""><?php echo $this->lang->line('select'); ?></option>
                                            <?php
                                            foreach ($classlist as $class) {
                                                ?>
                                                <option value="<?php echo $class['id'] ?>" <?php if (set_value('class_id') == $class['id']) echo "selected=selected" ?>><?php echo $class['class'] ?></option>
                                                <?php
                                                $count++;
                                            }
                                            ?>
                                        </select>
                                        <span class="text-danger"><?php echo form_error('class_id'); ?></span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1"><?php echo $this->lang->line('section'); ?><small class="req"> *</small></label>
                                        <select  id="section_id" name="section_id" class="form-control" >
                                            <option value=""><?php echo $this->lang->line('select'); ?></option>
                                            <?php
                                            foreach ($section_list as $value) {
                                                ?>
                                                <option  <?php
                                                if ($value['section_id'] == $section_id) {
                                                    echo "selected";
                                                }
                                                ?> value="<?php echo $value['section_id']; ?>"><?php echo $value['section']; ?></option>
                                                    <?php
                                                }
                                                ?>
                                        </select>
                                        <span class="text-danger"><?php echo form_error('section_id'); ?></span>
                                    </div>
                                </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <button type="submit" name="search" value="search_filter" class="btn btn-primary btn-sm checkbox-toggle pull-right"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>
                                </div>
                            </div>
                        </div>
                    </form>



                    <div class="">
                        <div class="box-header ptbnull"></div>
                        <div class="box-header ptbnull">
                            <h3 class="box-title titlefix"><i class="fa fa-money"></i> <?php ?> <?php echo $this->lang->line('fees') . " " . $this->lang->line('collection') . " " . $this->lang->line('report'); ?></h3>
                        </div>
                        <div class="box-body table-responsive" id="transfee">
                            <div class="download_label"><?php ?> <?php echo $this->lang->line('fees') . " " . $this->lang->line('collection') . " " . $this->lang->line('report') . "<br>";
                                                $this->customlib->get_postmessage();
                                                ?></div>
                            <a class="btn btn-default btn-xs pull-right" id="print" onclick="printDiv()" ><i class="fa fa-print"></i></a> <a class="btn btn-default btn-xs pull-right" id="btnExport" onclick="fnExcelReport();"> <i class="fa fa-file-excel-o"></i> </a>
                            <table class="table table-striped  table-hover " id="headerTable">
                                <thead class="header">
                                    <tr>
                                        <th><?php echo $this->lang->line('payment_id'); ?></th>
                                        <th><?php echo $this->lang->line('date'); ?></th>
                                        <th><?php echo $this->lang->line('name'); ?></th>
                                        <th><?php echo $this->lang->line('class'); ?></th>
                                        <th><?php echo $this->lang->line('fee_type'); ?></th>
                                        <th><?php echo $this->lang->line('collect_by'); ?></th>
                                        <th><?php echo $this->lang->line('mode'); ?></th>

                                        <th class="text text-right"><?php echo $this->lang->line('amount'); ?> <span><?php echo "(" . $currency_symbol . ")"; ?></span></th>
                                        <th class="text text-right"><?php echo $this->lang->line('discount'); ?> <span><?php echo "(" . $currency_symbol . ")"; ?></span></th>
                                        <th class="text text-right"><?php echo $this->lang->line('fine'); ?> <span><?php echo "(" . $currency_symbol . ")"; ?></span></th>
                                        <th class="text text-right"><?php echo $this->lang->line('total'); ?> <span><?php echo "(" . $currency_symbol . ")"; ?></span></th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php

                                    if (empty($results)) {
                                    } else {

                                        $count = 1;
                                        $grdamountLabel = array();
                                        $grddiscountLabel = array();
                                        $grdfineLabel = array();
                                        $grdTotalLabel = array();

                                        foreach ($results as $key => $value) {


                                            $payment_id = array();
                                            $date = array();
                                            $student_name = array();
                                            $student_class = array();
                                            $fees_type = array();
                                            $pay_mode = array();
                                            $collection_by = array();
                                            $amountLabel = array();
                                            $discountLabel = array();
                                            $fineLabel = array();
                                            $TotalLabel = array();
                                            foreach ($value as $collect) {
                                                $payment_id[] = $collect['id'] . "/" . $collect['inv_no'];
                                                $date[] = date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($collect['date']));
                                                $student_name[] = $this->customlib->getFullName($collect['firstname'],$collect['middlename'],$collect['lastname'],$sch_setting->middlename,$sch_setting->lastname);
                                                $student_class[] = $collect['class'] . " (" . $collect['section'] . ")";
                                                $fees_type[] = $collect['type'];
                                                $pay_mode[] = $collect['payment_mode'];
                                                $collection_by[] = $collect['received_byname']['name'] . " (" . $collect['received_byname']['employee_id'] . ")";

                                                $amountLabel[] = number_format($collect['amount'], 2, '.', '');

                                                $discountLabel[] = number_format($collect['amount_discount'], 2, '.', '');


                                                $fineLabel[] = number_format($collect['amount_fine'], 2, '.', '');
                                                $t = $collect['amount'] + $collect['amount_fine'];
                                                $TotalLabel[] = number_format($t, 2, '.', '');
                                            }
                                            ?>
                                            <tr>
                                                <td>
                                                    <table width="100%"><?php foreach ($payment_id as $p_ides) {
                                                ?>
                                                            <tr><td class="text-left-md"><?php echo $p_ides; ?></td></tr>
                                                        <?php }
                                                        ?></table>
                                                </td>
                                                <td >
                                                    <table width="100%"><?php foreach ($date as $date_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $date_val; ?></td></tr>
                                                        <?php }
                                                        ?></table>
                                                </td>
                                                <td >
                                                    <table width="100%"><?php foreach ($student_name as $student_name_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $student_name_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td>
                                                    <table width="100%"><?php
                                                        foreach ($student_class as $student_class_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $student_class_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td >
                                                    <table width="100%"><?php foreach ($fees_type as $fees_type_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $fees_type_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td ><table width="100%"><?php foreach ($collection_by as $collection_by_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $collection_by_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table></td>
                                                <td >
                                                    <table width="100%"><?php foreach ($pay_mode as $pay_mode_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $pay_mode_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td class="text text-right">
                                                    <table width="100%"><?php foreach ($amountLabel as $amountLabel_val) {
                                                            ?>
                                                            <tr><td><?php echo $amountLabel_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td class="text text-right">
                                                    <table width="100%"><?php foreach ($discountLabel as $discountLabel_val) {
                                                            ?>
                                                            <tr><td><?php echo $discountLabel_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>

                                                </td>
                                                <td class="text text-right">
                                                    <table width="100%"><?php foreach ($fineLabel as $fineLabel_val) {
                                                            ?>
                                                            <tr><td><?php echo $fineLabel_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>

                                                </td>
                                                <td class="text text-right">
                                                    <table width="100%"><?php foreach ($TotalLabel as $TotalLabel_val) {
                                                            ?>
                                                            <tr><td><?php echo $TotalLabel_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                            </tr>
                                            <?php
                                            $count++;
                                            ?>

                                            <?php
                                            $grdamountLabel[] = array_sum($amountLabel);
                                            $grddiscountLabel[] = array_sum($discountLabel);
                                            $grdfineLabel[] = array_sum($fineLabel);
                                            $grdTotalLabel[] = array_sum($TotalLabel);
                                        }
                                        ?>
                                          <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td style="font-weight:bold"><?php echo $this->lang->line('sub') . " " . $this->lang->line('total') ?></td>
                                                <td class="text text-right" style="font-weight:bold"><?php echo array_sum($grdamountLabel); ?></td>
                                                <td class="text text-right" style="font-weight:bold" ><?php echo array_sum($grddiscountLabel); ?></td>
                                                <td class="text text-right" style="font-weight:bold" ><?php echo array_sum($grdfineLabel); ?></td>
                                                <td class="text text-right " style="font-weight:bold" ><?php echo array_sum($grdTotalLabel); ?></td>
                                            </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td style="font-weight:bold"><?php echo $this->lang->line('grand') . " " . $this->lang->line('total'); ?></td>
                                            <td class="text text-right" style="font-weight:bold"><?php echo array_sum($grdamountLabel); ?></td>
                                            <td class="text text-right" style="font-weight:bold" ><?php echo array_sum($grddiscountLabel); ?></td>
                                            <td class="text text-right" style="font-weight:bold" ><?php echo array_sum($grdfineLabel); ?></td>
                                            <td class="text text-right " style="font-weight:bold" ><?php echo array_sum($grdTotalLabel); ?></td>
                                        </tr>
                                        <?php
                                    }
                                    ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
</section>
</div>
<iframe id="txtArea1" style="display:none"></iframe>
<script type="text/javascript">
    function removeElement() {
        document.getElementById("imgbox1").style.display = "block";
    }
    function getSectionByClass(class_id, section_id) {
        if (class_id != "" && section_id != "") {
            $('#section_id').html("");
            var base_url = '<?php echo base_url() ?>';
            var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
            $.ajax({
                type: "GET",
                url: base_url + "sections/getByClass",
                data: {'class_id': class_id},
                dataType: "json",
                success: function (data) {
                    $.each(data, function (i, obj)
                    {
                        var sel = "";
                        if (section_id == obj.section_id) {
                            sel = "selected";
                        }
                        div_data += "<option value=" + obj.section_id + " " + sel + ">" + obj.section + "</option>";
                    });
                    $('#section_id').html(div_data);
                }
            });
        }
    }
    $(document).ready(function () {
        $(document).on('change', '#class_id', function (e) {
            $('#section_id').html("");
            var class_id = $(this).val();
            var base_url = '<?php echo base_url() ?>';
            var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
            $.ajax({
                type: "GET",
                url: base_url + "sections/getByClass",
                data: {'class_id': class_id},
                dataType: "json",
                success: function (data) {
                    $.each(data, function (i, obj)
                    {
                        div_data += "<option value=" + obj.section_id + ">" + obj.section + "</option>";
                    });

                    $('#section_id').html(div_data);
                }
            });
        });
        $(document).on('change', '#section_id', function (e) {
            getStudentsByClassAndSection();
        });
        var class_id = $('#class_id').val();
        var section_id = '<?php echo set_value('section_id') ?>';
        getSectionByClass(class_id, section_id);
    });
    function getStudentsByClassAndSection() {
        $('#student_id').html("");
        var class_id = $('#class_id').val();
        var section_id = $('#section_id').val();
        var base_url = '<?php echo base_url() ?>';
        var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
        $.ajax({
            type: "GET",
            url: base_url + "student/getByClassAndSection",
            data: {'class_id': class_id, 'section_id': section_id},
            dataType: "json",
            success: function (data) {
                $.each(data, function (i, obj)
                {
                    div_data += "<option value=" + obj.id + ">" + obj.firstname + " " + obj.lastname + "</option>";
                });
                $('#student_id').append(div_data);
            }
        });
    }

    $(document).ready(function () {
        $("ul.type_dropdown input[type=checkbox]").each(function () {
            $(this).change(function () {
                var line = "";
                $("ul.type_dropdown input[type=checkbox]").each(function () {
                    if ($(this).is(":checked")) {
                        line += $("+ span", this).text() + ";";
                    }
                });
                $("input.form-control").val(line);
            });
        });
    });
    $(document).ready(function () {
        $.extend($.fn.dataTable.defaults, {
            ordering: false,
            paging: false,
            bSort: false,
            info: false
        });
    });
</script>
<script>
<?php
if ($search_type == 'period') {
    ?>

        $(document).ready(function () {
            showdate('period');
        });

    <?php
}
?>


    document.getElementById("print").style.display = "block";
    document.getElementById("btnExport").style.display = "block";
    document.getElementById("heading").style.display = "none";

    function printDiv() {
        document.getElementById("print").style.display = "none";
        document.getElementById("btnExport").style.display = "none";
        document.getElementById("heading").style.display = "block";
        var divElements = document.getElementById('transfee').innerHTML;
        var oldPage = document.body.innerHTML;
        document.body.innerHTML =
                "<html><head><title></title></head><body>" +
                divElements + "</body>";
        window.print();
        document.body.innerHTML = oldPage;

        location.reload(true);
    }

    function fnExcelReport()
    {
        var tab_text = "<table border='2px'><tr >";
        var textRange;
        var j = 0;
        tab = document.getElementById('headerTable'); // id of table

        for (j = 0; j < tab.rows.length; j++)
        {
            tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
            //tab_text=tab_text+"</tr>";
        }

        tab_text = tab_text + "</table>";
        tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
        tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
        tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

        var ua = window.navigator.userAgent;
        var msie = ua.indexOf("MSIE ");

        if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
        {
            txtArea1.document.open("txt/html", "replace");
            txtArea1.document.write(tab_text);
            txtArea1.document.close();
            txtArea1.focus();
            sa = txtArea1.document.execCommand("SaveAs", true, "Say Thanks to Sumit.xls");
        } else                 //other browser not tested on IE 11
            sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

        return (sa);
    }






</script>