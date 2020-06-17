<?php
require('top.inc.php');
?>
<div class="content pb-0">
	<div class="orders">
	   <div class="row">
		  <div class="col-xl-12">
			 <div class="card">
				<div class="card-body">
				   <h4 class="box-title">Заказы </h4>
				</div>
				<div class="card-body--">
				   <div class="table-stats order-table ov-h">
					  <table class="table">
							<thead>
								<tr>
									<th class="product-thumbnail"> ID</th>
									<th class="product-name"><span class="nobr">Продукт/Кол-во</span></th>
									<th class="product-price"><span class="nobr"> Адрес</span></th>
									<th class="product-stock-stauts"><span class="nobr"> Способ оплаты </span></th>
									<th class="product-stock-stauts"><span class="nobr"> Статус оплаты </span></th>
									<th class="product-stock-stauts"><span class="nobr"> Статус заказа </span></th>
								</tr>
							</thead>
							<tbody>
								<?php
								$res=mysqli_query($con,"select order_detail.qty,product.name,`order`.*,order_status.name as order_status_str from order_detail,product,`order`,order_status where order_status.id=`order`.order_status and product.id=order_detail.product_id and `order`.id=order_detail.order_id and product.added_by='".$_SESSION['ADMIN_ID']."' order by `order`.id desc");
								while($row=mysqli_fetch_assoc($res)){
								?>
								<tr>
									<td class="product-add-to-cart"><?php echo $row['id']?><br/>
									</td>
									<td class="product-name">
									<?php echo $row['name']?><br/>
									<?php echo $row['qty']?>
									</td>
									<td class="product-name">
									<?php echo $row['address']?><br/>
									<?php echo $row['city']?><br/>
									<?php echo $row['pincode']?>
									</td>
									<td class="product-name"><?php echo $row['payment_type']?></td>
									<td class="product-name"><?php echo $row['payment_status']?></td>
									<td class="product-name"><?php echo $row['order_status_str']?></td>
									
									
								</tr>
								<?php } ?>
							</tbody>
							
						</table>
				   </div>
				</div>
			 </div>
		  </div>
	   </div>
	</div>
</div>
<?php
require('footer.inc.php');
?>