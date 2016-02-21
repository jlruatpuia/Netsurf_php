<?php
include 'layout/temp_start.php';
include 'layout/header.php';
?>
<section id="middle">


    <!-- page title -->
    <header id="page-header">
        <h1>Customer Registration</h1>
        <ol class="breadcrumb">
            <li><a href="index.php">Netsurf</a></li>
            <li><a href="#">Front Office</a></li>
            <li class="active">Customer Registration</li>
        </ol>
    </header>
    <!-- /page title -->


    <div id="content" class="padding-20">

        <div class="panel panel-default">

            <div class="panel-heading">

                <span class="elipsis"><!-- panel title -->
                    <strong>Enter Customer Details</strong>
                </span>

                <!-- right options -->
                <ul class="options pull-right relative list-unstyled">
                    <li><a href="#" class="btn btn-primary btn-xs white"><i class="fa fa-list"></i> Customer List</a></li>
                </ul>
                <!-- /right options -->


            </div>

            <!-- panel content -->
            <div class="panel-body">
                <form action="customer_registration.php" class="form-horizontal" method="post">
                    <div class="controls-row">
                        <label class="control-label col-md-3">Customer No:</label>
                        <div class="col-md-9">
                            <input type="text" name="txtCusNo" class="form-control" autofocus required />
                        </div>
                    </div>
                    <div class="controls-row">
                        <label class="control-label col-md-3" for="txtCNM">Customer Name:</label>
                        <div class="col-md-9">
                            <input type="text" name="txtCNM" class="form-control" required />
                        </div>
                    </div>
                    <div class="controls-row">
                        <label class="control-label col-md-3">Category:</label>
                        <div class="col-md-9">
                            <select name="cboCat" class="form-control">
                                <option value="Individual" selected="selected">Individual</option>
                                <option value="Company">Company</option>
                                <option value="Government">Government</option>
                                <option value="Organization">Organization</option>
                            </select>
                        </div>
                    </div>
                    <div class="controls-row">
                        <label class="control-label col-md-3">Sex:</label>
                        <div class="col-md-9">
                            <select name="cboSex" class="form-control">
                                <option value="M" selected="selected">Male</option>
                                <option value="F">Female</option>
                            </select>
                        </div>
                    </div>
                    <div class="controls-row">
                        <label class="control-label col-md-3">Education:</label>
                        <div class="col-md-9">
                            <select name="cboEDN" class="form-control">
                                <option value="M" selected="selected">Matriculation</option>
                                <option value="G">Graduate</option>
                                <option value="PG">Post-Graduate</option>
                                <option value="O">Others</option>
                            </select>
                        </div>
                    </div>
                    <div class="controls-row">
                        <label class="control-label col-md-3">Occupation:</label>
                        <div class="col-md-9">
                            <select name="cboOCU" class="form-control">
                                <option value="Gov't Servant" selected="selected">Gov't Servant</option>
                                <option value="Self-Employed">Self-Employed</option>
                                <option value="Salaried">Salaried</option>
                                <option value="Unemployed">Unemployed</option>
                            </select>
                        </div>
                    </div>
                    <div class="controls-row">
                        <label class="control-label col-md-3">DOB:</label>
                        <div class="col-md-9">
                            <select name="cboDD">
                                <?php
                                for($i = 1; $i <= 31; $i++){
                                    echo "<option value='" . $i . "'>" . $i . "<option>";
                                }
                                ?>
                            </select>
                            <select name="cboMM">
                                <?php
                                for($i = 1; $i <= 12; $i++){
                                    $dateObj   = DateTime::createFromFormat('!m', $i);
                                    $monthName = $dateObj->format('F'); // March
                                    echo "<option value='" . $i . "'>" . $monthName . "<option>";
                                }
                                ?>
                            </select>
                            <select name="cboYY">
                                <?php
                                for($i = date("Y") - 50; $i <= date("Y"); $i++){
                                    echo "<option value='" . $i . "'>" . $i . "<option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">Address:</div>
                        <div class="col-md-9">
                            <input type="text" name="txtAddress" class="form-control" required />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">PIN No:</div>
                        <div class="col-md-9">
                            <input type="text" name="txtPIN" class="form-control" />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">City:</div>
                        <div class="col-md-9">
                            <input type="text" name="txtCTY" class="form-control" />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">State:</div>
                        <div class="col-md-9">
                            <input type="text" name="txtSTT" class="form-control" />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">Mobile No:</div>
                        <div class="col-md-9">
                            <input type="number" name="txtMOB" class="form-control" required />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">Landline No:</div>
                        <div class="col-md-9">
                            <input type="number" name="txtPHN" class="form-control" />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">Contact Person:</div>
                        <div class="col-md-9">
                            <input type="email" name="txtCTP" class="form-control" />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">E-Mail:</div>
                        <div class="col-md-9">
                            <input type="email" name="txtEmail" class="form-control" required />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">Plan Selected:</div>
                        <div class="col-md-3">
                            <select name="cboPlan" class="form-control">
                                <option value="BB">Broadband</option>
                                <option value="DD">Dedicated</option>
                            </select>
                        </div>
                        <div class="control-label col-md-3">Speed:</div>
                        <div class="col-md-3">
                            <input type="text" name="txtSpeed" class="form-control" required />
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="control-label col-md-3">
                            Photo:
                        </div>
                        <div class="col-md-9">
                            <div class="fancy-file-upload">
                                <i class="fa fa-upload"></i>
                                <input type="file" class="form-control" name="contact[attachment]" onchange="jQuery(this).next('input').val(this.value);" />
                                <input type="text" class="form-control" placeholder="no file selected" readonly="" />
                                <span class="button">Choose File</span>
                            </div>
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="col-md-offset-3 col-md-9">
                            <label class="text text-info"><?php echo "test"; ?></label>
                        </div>
                    </div>
                    <div class="controls-row">
                        <div class="col-md-offset-3 col-md-9">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Submit</button>
                            <button type="submit" class="btn btn-warning"><i class="fa fa-refresh"></i> Reset</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- /panel content -->

        </div>
    </div>
</section>
<!-- /MIDDLE -->
<?php
include 'layout/footer.php';
include 'layout/temp_end.php';
?>
