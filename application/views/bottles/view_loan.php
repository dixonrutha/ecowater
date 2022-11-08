
<div class="row">
    <div class="col-sm-12 col-md-4 mg-t-10 mg-md-t-0">
        <div class="card">
            <div class="card-body">
                <h6 style="text-align: center;" class="mg-t-15 mg-b-10"><strong><?= $loan->sub_name ?></strong></h6>
                <table class="table table-bordered table-sm mg-b-0">
                    <tr>
                        <td><strong>Loan ID</strong></td>
                        <td style="text-align: right"><?= $loan->id ?></td>
                    </tr>
                    <tr>
                        <td><strong>Card Number</strong></td>
                        <td style="text-align: right"><?= $loan->card_luhn ?></td>
                    </tr>
                    <tr>
                        <td><strong>Mobile</strong></td>
                        <td style="text-align: right"><?= $loan->mobile ?></td>
                    </tr>
                    <tr>
                        <td><strong>Bottle</strong></td>
                        <td style="text-align: right"><?= $loan->bottle_name ?></td>
                    </tr>
                    <tr>
                        <td><strong>Size</strong></td>
                        <td style="text-align: right"><?= $loan->litres . ' ltr' ?></td>
                    </tr>
                    <tr>
                        <td><strong>Quantity</strong></td>
                        <td style="text-align: right"><?= $loan->quantity ?></td>
                    </tr>
                    <tr>
                        <td><strong>Unit Price</strong></td>
                        <td style="text-align: right"><?= number_format($loan->unit_price, 2) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Total Loan</strong></td>
                        <td style="text-align: right"><?= number_format($loan->loan_amount, 2) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Loan Rate</strong></td>
                        <td style="text-align: right"><?= number_format($loan->rate, 0) . '%' ?></td>
                    </tr>
                    <tr>
                        <td><strong>Collected Amount</strong></td>
                        <td style="text-align: right"><?= number_format($loan->collected_amount, 2) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Outstanding Amount</strong></td>
                        <td style="text-align: right"><?= number_format($loan->loan_amount - $loan->collected_amount, 2) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Cashier</strong></td>
                        <td style="text-align: right"><?= $loan->cashier ?></td>
                    </tr>
                    <tr>
                        <td><strong>Loan Date</strong></td>
                        <td style="text-align: right"><?= date('d-M-Y', strtotime($loan->sell_date)) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Booked Timestamp</strong></td>
                        <td style="text-align: right"><?= date('D d-M-Y H:i:s', strtotime($loan->date_registered)) ?></td>
                    </tr>
                    <tr>
                        <td><strong>Loan End Date</strong></td>
                        <td style="text-align: right"><?php if($loan->loan_end_date >= '1990-01-01') echo date('d-M-Y', strtotime($loan->loan_end_date)); ?></td>
                    </tr>
                    <tr>
                        <td><strong>Status</strong></td>
                        <?php if ($loan->status == 'Active') { ?>
                            <td style="text-align: right"><span class='badge badge-success' style='font-size:11px'><?= $loan->status ?></span></td>
                        <?php } else { ?>
                            <td style="text-align: right"><span class='badge badge-dark' style='font-size:11px'><?= $loan->status ?></span></td>
                        <?php } ?>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-8 mg-t-5">
        <div class="card">
            <div class="card-header"><strong>Repayments Collection</strong></div>
            <div class="card-body">
                <table id="repayments" class="table table-bordered table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>Trn Date</th>
                            <th>Ecowater Ref.</th>
                            <th>Mobile</th>
                            <th>Card Number</th>
                            <th>Trn Amount</th>
                            <th>Installment</th>
                        </tr>
                    <tbody>
                        <?php foreach ($installment as $x) { ?>
                            <tr>
                                <td><?= date('d-M-Y H:i', strtotime($x->date_registered)) ?></td>
                                <td><?= $x->eco_ref ?></td>
                                <td><?= $x->mob_paid ?></td>
                                <td><?= $x->utilityref_card_no ?></td>
                                <td style="text-align: right"><?= number_format(($x->amount + $x->mob_amt), 2) ?></td>
                                <td style="text-align: right"><?= number_format($x->amount, 2) ?></td>
                            </tr>
                        <?php }
                        ?>                        
                    </tbody>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $('#repayments').DataTable({
            order: [],
            autoWidth: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: '_MENU_ items/page'
            }
        });
    });
</script>