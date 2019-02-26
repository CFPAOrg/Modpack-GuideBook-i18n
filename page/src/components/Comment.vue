<template>
	<keep-alive>
		<transition name="zoom-out">
			<div class="modal is-active" v-show="active" ref="modal">
				<div class="modal-background" @click="active = false"></div>
				<div class="modal-content">
					<loading v-if="loading"/>
					<div id="lv-container" data-id="city" data-uid="MTAyMC8yOTcxNS82Mjgz"></div>
				</div>
				<button class="modal-close is-large" aria-label="close" @click="active = false"></button>
			</div>
		</transition>
	</keep-alive>
</template>
<script>
	import Loading from './Loading';

	export default {
		name: 'comment',
		props: ['show'],
		components: { Loading },
		data () {
			return {
				loading: true
			}
		},
		computed: {
			active: {
				get () {
					return this.show;
				},
				set (val) {
					this.$emit('update:show', val);
				}
			}
		},
		mounted () {
			let j, e = document.getElementsByTagName('script')[0];
			if (typeof LivereTower === 'function') return;
			j = document.createElement('script');
			j.src = 'https://cdn-city.livere.com/js/embed.dist.js';
			j.async = true;
			j.onload = () => {
				this.loading = false;
			};
			e.parentNode.insertBefore(j, e);
		},
		methods: {
			keyPress (event) {
				// Esc key
				if (this.active && event.keyCode === 27) this.active = false;
			}
		},
		created () {
			if (typeof window !== 'undefined') {
				document.addEventListener('keyup', this.keyPress)
			}
		},
		beforeDestroy () {
			if (typeof window !== 'undefined') {
				document.removeEventListener('keyup', this.keyPress)
			}
		}
	}
</script>
