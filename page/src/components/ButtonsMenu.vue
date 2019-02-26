<template>
	<div>
		<div class="buttons has-addons menu is-hidden-desktop">
			<span class="button is-primary" @click="toggleAside">
				<i class="iconfont icon-menu"></i>
			</span>
			<span class="button is-primary" @click="comment">
				<i class="iconfont icon-comment"></i>
			</span>
		</div>
		<div class="buttons has-addons menu is-hidden-touch">
			<span class="button is-primary is-large" @click="comment">
				<i class="iconfont icon-comment is-size-4"></i>
			</span>
		</div>
	</div>
</template>
<style>
	.menu {
		position: absolute;
		right: 32px;
		bottom: 32px;
		z-index: 2;
	}

	@media screen and (max-width: 1087px) {
		.menu {
			right: 16px;
			bottom: 0;
		}
	}
</style>
<script>
	export default {
		name: 'buttons-menu',
		methods: {
			toggleAside () {
				this.$emit('toggle');
			},
			comment () {
				this.$emit('comment');
			}
		}
	}
</script>
