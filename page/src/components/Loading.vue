<template>
	<div class="has-text-centered loading-container">
		<div class="loading">
			<div class="square-spin">
				<div></div>
			</div>
		</div>
		<span>正在加载中...</span>
	</div>

</template>
<style>
	.loading-container {
		width: 100%;
		padding-top: 20%;
		padding-top: 28vh;
	}

	.square-spin {
		width: 50px;
		margin: 12px auto;
	}

	.square-spin > div {
		border: none;
	}
</style>
