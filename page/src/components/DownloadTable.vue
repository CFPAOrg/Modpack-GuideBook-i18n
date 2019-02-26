<template>
	<div>
		<div class="container is-fluid table-container">
			<table class="table is-fullwidth download-table has-text-white">
				<thead>
				<tr>
					<!--<th></th>-->
					<th>版本</th>
					<th>发布时间</th>
					<th>下载地址</th>
				</tr>
				</thead>
				<tbody>
				<tr v-for="(item, i) in data.contents">
					<!--<th><span class="icon"><i v-if="item" class="iconfont icon-new"></i></span></th>-->
					<td>{{ item.version }}</td>
					<td>2019.2.20 12:19:23</td>
					<td>
						<a href="javascript:void(0);" @click="download(i)">点击下载</a>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
		<download-detail :show.sync="showDetail" :data="downloadData"/>
	</div>

</template>
<style>
	.download-table {
		background-color: transparent;
	}

	.download-table th {
		color: #FFFFFF !important;
	}
</style>
<script>
	import DownloadDetail from './DownloadDetail';

	export default {
		props: ['data'],
		components: { DownloadDetail },
		data () {
			return {
				showDetail: false,
				downloadData: null
			}
		},
		methods: {
			download (index) {
				this.downloadData = this.data.contents[index];
				this.showDetail = true;
			}
		}
	}
</script>
