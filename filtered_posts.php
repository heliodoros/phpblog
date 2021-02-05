<?php include('config.php'); ?>
<?php include('includes/public_functions.php'); ?>
<?php include('includes/head_section.php'); ?>
<?php 
	// Get posts under a particular topic
	if (isset($_GET['topic'])) {
		$topic_id = $_GET['topic'];
		$posts = getPublishedPostsByTopic($topic_id);
	}
?>
	<title><?=$siteName;?> | Home </title>
</head>
<body>
<div class="container">
<!-- Navbar -->
	<?php include( ROOT_PATH . '/includes/navbar.php'); ?>
<!-- // Navbar -->
<!-- content -->
<div class="content">
	<h2 class="content-title">
		Articles on <u><?php echo getTopicNameById($topic_id); ?></u>
	</h2>
	<hr>
	<?php foreach ($posts as $post):
	if($post['published']==1){
		?>
		<div class="post" style="margin-left: 0px;">
		<a href="single_post.php?post-slug=<?php echo $post['slug']; ?>">
			<img src="<?php echo BASE_URL . '/static/images/' . $post['image']; ?>" class="post_image" alt="">
				<div class="post_info">
					<h3><?php echo $post['title'] ?></h3>
					<div class="info">
						<span><?php echo date("F j, Y ", strtotime($post["created_at"])); ?></span>
						<span class="read_more">Read more...</span>
					</div>
				</div>
			</a>
		</div>
	<?php }endforeach ?>
</div>
<!-- // content -->
</div>
<!-- // container -->

<!-- Footer -->
	<?php include( ROOT_PATH . '/includes/footer.php'); ?>
<!-- // Footer -->