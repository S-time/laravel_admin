<template>
    <div>
        <el-form :inline="true" :model="form" size="small">
            <el-form-item label="客户ID">
                <el-input v-model="form.id" placeholder="客服ID"></el-input>
            </el-form-item>
            <el-form-item label="标签">
                <el-input v-model="form.tag" placeholder="标签"></el-input>
            </el-form-item>
            <el-form-item label="状态">
                <el-select v-model="form.status" placeholder="请选择">
                    <el-option key="1" label="状态1" value="1"> </el-option>
                    <el-option key="2" label="状态2" value="2"> </el-option>
                </el-select>
            </el-form-item>
            <el-form-item label="跟进状态">
                <el-select v-model="form.state" placeholder="请选择">
                    <el-option key="1" label="跟进状态1" value="1"> </el-option>
                    <el-option key="2" label="跟进状态2" value="2"> </el-option>
                </el-select>
            </el-form-item>


            <el-form-item>
                <el-button type="primary" @click="onSearch">查询</el-button>
            </el-form-item>
        </el-form>

        <el-table :data="tableData">
            <el-table-column prop="id" label="ID" width="80"></el-table-column>
            <el-table-column prop="tag" label="标签"></el-table-column>
            <el-table-column prop="phone" label="手机号"></el-table-column>
            <el-table-column prop="status" label="状态">
                <template slot-scope="scope">
                    <el-tag type="success" v-if="scope.row.status == 1" size="small">状态1</el-tag>
                    <el-tag type="info" v-if="scope.row.status == 2" size="small">状态2</el-tag>
                </template>
            </el-table-column>
            <el-table-column prop="state" label="跟进状态">
                <template slot-scope="scope">
                    <el-tag type="success" v-if="scope.row.state == 1" size="small">跟进状态1</el-tag>
                    <el-tag type="info" v-if="scope.row.state == 2" size="small">跟进状态2</el-tag>
                </template>
            </el-table-column>
            <el-table-column prop="create_time" label="创建时间"></el-table-column>

            <el-table-column
                    fixed="right"
                    label="操作"
                    width="100">
                <template slot-scope="scope">
                    <el-button type="text" size="small" v-if="auth.canTel" @click="telRow(scope.row)">拨号</el-button>
                </template>
            </el-table-column>
        </el-table>
        <br/>
        <el-row>
            <el-col :span="13" :offset="11">
                <el-pagination
                        background
                        @size-change="handleSizeChange"
                        @current-change="handleCurrentChange"
                        :current-page="form.page"
                        :page-sizes="[25, 50, 100]"
                        :page-size="form.pageSize"
                        layout="total, sizes, prev, pager, next, jumper"
                        :total="totalItems">
                </el-pagination>
            </el-col>
        </el-row>
        <br/>
    </div>
</template>

<script>
    export default {
        mounted() {
            this.getList();
        },
        data() {
            return {
                tableData: [],
                form:{
                    page:1,
                    pageSize:20
                },
                totalItems:0,
                auth:{},
            }
        },
        methods:{
            onSearch() {
                this.form.page = 1;
                this.getList();
            },

            getList() {
                this.$http.get('/api/system/consumer/list', this.form).then(res => {
                    this.tableData = res.data.data;
                    this.totalItems = res.data.total;
                    this.auth = res.data.auth;
                });
            },
            handleSizeChange(size) {
                this.form.pageSize = size;
                this.getList();
            },
            handleCurrentChange(page) {
                this.form.page = page;
                this.getList();
            },
            telRow(row) {
                this.$http.post('/api/system/consumer/tel', row).then(res => {
                    if(res.error === 0) {
                        this.$message({
                            message: '拨号接口',
                            type: 'success'
                        });
                        this.addNewDialog = false;
                        this.getList();
                    } else {
                        this.$message({
                            message: res.msg,
                            type: 'error'
                        });
                    }
                });
            }
        }
    }
</script>