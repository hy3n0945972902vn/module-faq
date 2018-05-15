<!-- BEGIN: main -->
<!-- BEGIN: welcome -->
<div class="welcome">{WELCOME}.</div>
<!-- END: welcome -->
<!-- BEGIN: subcats -->
<ul class="catlist">
	<!-- BEGIN: li -->
	<li class="main">{SUBCAT.name}</li>
	<!-- BEGIN: description -->
	<li class="description">{SUBCAT.description}</li>
	<!-- END: description -->
	<!-- END: li -->
</ul>
<!-- END: subcats -->
<!-- BEGIN: is_show_row -->
<div class="show_row">
	<!-- 	<div class="faq_listquestion"> -->
	<!-- 		<h3>{LANG.faq_listquestion}</h3> -->
	<!-- 		<a name="faqlist"></a> -->
	<!-- 		<!-- BEGIN: row -->
	-->
	<!-- 		<div class="block_faq"> -->
	<!-- 			<div class="title"> -->
	<!-- 				<a href="javascript:void(0);" onclick="faq_show_content({ROW.id});"> -->
	<!-- 				<em class="fa fa-question-circle question-awesome"></em> {ROW.title}</a> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 		<!-- END: row -->
	-->
	<!-- 	</div> -->
</div>
<div class="faq_listquestion">
	<h3>{LANG.faq_listquestion}</h3>
	<!-- BEGIN: detail -->
	<div class="panel  panel-faq ">

		<a name="faq{ROW.id}"></a>
		<div class=" block_faq">
			<h4 class=" title">
				<a data-toggle="collapse" data-parent="#accordion-cat-1"
					href="#faq-cat-1-sub-2 "> <em
					class="fa fa-question-circle question-awesome"></em> {ROW.title} <span
					class="pull-right"><i class="glyphicon glyphicon-plus"></i></span>

				</a>
			</h4>
		</div>
		<div id="faq-cat-1-sub-2" class="panel-collapse collapse">
			<div class="panel-body">
<!-- 				<div class="question"> -->
<!-- 					<strong class="fa fa-gg-circle"> {LANG.faq_question}:</strong> -->
<!-- 					{ROW.question}<br /> -->
<!-- 				</div> -->
				<div class="answer">
					<strong>{LANG.faq_answer}:</strong><br /> {ROW.answer}
				</div>
			</div>
		</div>

	</div>
	<!-- END: detail -->
</div>
<!-- END: is_show_row -->
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('.collapse')
								.on(
										'show.bs.collapse',
										function() {
											var id = $(this).attr('id');
											$('a[href="#' + id + '"]').closest(
													'.panel-heading').addClass(
													'active-faq');
											$(
													'a[href="#'
															+ id
															+ '"] .panel-title span')
													.html(
															'<i class="glyphicon glyphicon-minus"></i>');
										});
						$('.collapse')
								.on(
										'hide.bs.collapse',
										function() {
											var id = $(this).attr('id');
											$('a[href="#' + id + '"]').closest(
													'.panel-heading')
													.removeClass('active-faq');
											$(
													'a[href="#'
															+ id
															+ '"] .panel-title span')
													.html(
															'<i class="glyphicon glyphicon-plus"></i>');
										});
					});
</script>

<!-- END: main -->